#!/bin/bash
#===============================================================================
#
#          FILE:  iriChecker.sh
# 
#         USAGE:  ./iriChecker.sh {iriFile}
# 
#   DESCRIPTION:  Extract a random set of IRIs for every prefix namespace for a
#   set of ontology terms and test that they can be found in bioportal REST
#   services.  This is useful for checking the terms of the bioportal triple
#   store against the terms available in the bioportal REST service.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Darren L. Weber, Ph.D., dlweber@stanford.edu
#       COMPANY:  Stanford BMIR
#       VERSION:  1.0
#       CREATED:  05/03/2012 11:39:20 AM PDT
#      REVISION:  ---
#===============================================================================

if [ $# -lt 1 ]; then
    echo "$0 {iriFile}"
    echo "The {iriFile} should contain term URIs in the first colum, one per row."
    exit 1
fi
iriFile=$1

# ------------------------------------------------------------------------------
# Extract only the term URL (remove <> wrapper).
cut -f1 -d" " $iriFile | sed -e "s/^<//" -e "s/>$//" > iriTerms.txt 

# ------------------------------------------------------------------------------
# Extract a unique set of IRI prefixes.
regexHash="s/\(.*#\).*$/\1/"
regexSlash="s/\(.*\/\).*$/\1/"
cat iriTerms.txt | grep -F "#" | sed -e "$regexHash" | sort -u > iriPrefixesHash.txt
cat iriTerms.txt | sed -e "$regexSlash" | sort -u > iriPrefixesSlash.txt
cat iriPrefixesHash.txt iriPrefixesSlash.txt | sort -u > iriPrefixes.txt
rm iriPrefixesHash.txt
rm iriPrefixesSlash.txt

# ------------------------------------------------------------------------------
# For each IRI prefix, try to get a random sample of a few terms for testing.
# Get these terms from the original file of terms, so we get the ontology ID.
MAX_TERMS=5
rm -f iriPrefixTerms.txt
while read prefix; do
    grep -F "$prefix" $iriFile > tmp.txt
    nTerms=$(cat tmp.txt | wc -l)
    count=0
    while [ $count -lt $MAX_TERMS ]; do
        let R="${RANDOM} % $nTerms + 1"
        sed -n ${R}p tmp.txt >> iriPrefixTerms.txt
        let count+=1
    done
done < iriPrefixes.txt
# Sort and unique the terms (in case we get duplicates because the IRI prefix is
# repeated or the random selection chooses the same file a few times).
sort -u iriPrefixTerms.txt > tmp.txt
mv tmp.txt iriPrefixTerms.txt

# ------------------------------------------------------------------------------
# Bioportal REST calls to confirm these terms are in Bioportal.
# Alt Virtual Signature (always uses most recent version of the ontology):
# ./virtual/ontology/{ontology virtual id}?conceptid={iri-encoded concept id} 
restHost="http://rest.bioontology.org"
restPath="/bioportal/virtual/ontology/"
apiKey=$API_KEY
restErrors=0

ontBioportalURL="http://bioportal.bioontology.org/ontologies/"

function iriescape {
    escaped=`echo "$1" | tr '\012\015' '  ' | sed 's/ /%20/g; s/#/%23/g; s/\*/\\*/g; s/{/\\\{/g; s/}/\\\}/g; s/\?/%3f/g; s/&/%38/g; s/+/%2b/g; s/"/\\"/g; s/\[/\\\[/g; s/\]/\\\]/g; s/%20$//'`
}

# Usage: curlRestConcept ontologyVirtualID termURL
function curlRestConcept {
    iriescape "$2";
    restURL="${restHost}${restPath}${1}"
    queryURL="$restURL?conceptid=${escaped}&apikey=${apiKey}&light=1&norelations=1"
    # Use --head to get the header only (then curlHeader.txt == curlContent.txt)
    curl -s -H 'Accept:text/plain' \
        --dump-header curlHeader.txt \
        -o curlContent.txt \
        "$queryURL"
    restCode=$(grep -F "HTTP" curlHeader.txt | tr -d '\n\r')
    grep -q "200 OK" curlHeader.txt
    if [ $? -gt 0 ]; then
        let restErrors+=1
    fi
    rm -f curlHeader.txt
    rm -f curlContent.txt
}

rm -f iriChecks.txt
while read termLine; do
    termIRI=$(echo $termLine | cut -f1 -d " ")
    termURL=$(echo $termIRI | sed -e "s/^<//" -e "s/>.*$//")
    vrtID=$( echo $termLine | cut -f2 -d " ")
    verID=$( echo $termLine | cut -f3 -d " ")
    ontPURL="${ontBioportalURL}$vrtID"
    curlRestConcept $vrtID $termURL
    logMsg="$restCode, $termURL, $ontPURL (version $verID), $queryURL"
    echo "$logMsg" >> iriChecks.txt
done < iriPrefixTerms.txt

echo
echo "REST call errors for term IRIs: $restErrors"
echo
if [ $restErrors -gt 0 ]; then
    echo "REST response codes != 200:"
    echo
    grep -v "HTTP.*200" iriChecks.txt 
fi

exit $restErrors

