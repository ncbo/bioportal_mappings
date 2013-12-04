#!/bin/bash
#===============================================================================
#
#          FILE:  4storeDumpTerms.sh
# 
#         USAGE:  ./4storeDumpTerms.sh 
# 
#   DESCRIPTION:  Dump all the terms for bioportal triple store.
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

# Triple store configuration
triplestoreURL="http://sparql.bioontology.org"
triplestoreSparqlURL="${triplestoreURL}/sparql/"
# Loom API key is required to lift limits on SPARQL.
apiKey=$API_KEY

function uriescape {
    escaped=`echo "$1" | tr '\012\015' '  ' | sed 's/ /%20/g; s/#/%23/g; s/\*/\\*/g; s/{/\\\{/g; s/}/\\\}/g; s/\?/%3f/g; s/&/%38/g; s/+/%2b/g; s/"/\\"/g; s/\[/\\\[/g; s/\]/\\\]/g; s/%20$//'`
}

# Usage: curlSparql query
function curlSPARQL {
    uriescape "$1";
    queryURL="$triplestoreSparqlURL?query=${escaped}&apikey=$apiKey"
    echo
    echo "$0, INFO: Query:   $1"
    echo "$0, INFO: Encoded: $encoded"
    echo "$0, INFO: Query URL: $queryURL"
    curl -s -H 'Accept:text/plain' \
        --dump-header curlHeader.txt \
        -o curlContent.txt \
        "$queryURL"
    grep -q "200 OK" curlHeader.txt
    if [ $? -eq 0 ]; then
        echo "$0, INFO: Got an OK response"
    else
        echo "$0, ERROR: Failed to get a response"
        exit 1
    fi
}

# Get all the ontologies
query="SELECT DISTINCT ?vrtURL ?vrtID ?verID WHERE { ?vrt <http://bioportal.bioontology.org/metadata/def/id> ?vrtID .  ?vrt <http://bioportal.bioontology.org/metadata/def/hasVersion> ?ver .  ?ver a <http://omv.ontoware.org/2005/05/ontology#Ontology> .  ?ver <http://bioportal.bioontology.org/metadata/def/id> ?verID .  ?ver <http://bioportal.bioontology.org/metadata/def/hasDataGraph> ?vrtURL .  }"
curlSPARQL "$query"
grep -F -v "?vrtURL" curlContent.txt > ontologyURIs.txt

rm -f ontologyTerms.txt
while read ont; do
    vrtURI=$(echo $ont | cut -f1 -d " ")
    vrtID=$( echo $ont | cut -f2 -d " ")
    verID=$( echo $ont | cut -f3 -d " ")
    echo $vrtURI $vrtID $verID
    query="SELECT ?termIRI FROM $vrtURI WHERE { ?termIRI a <http://www.w3.org/2002/07/owl#Class> . FILTER(isIRI(?termIRI) ) }" 
    curlSPARQL "$query"
    grep -F -v "?termIRI" curlContent.txt > tmp.txt
    while read term; do
        termURI=$(echo $term | cut -f1 -d " ")
        echo "$termURI $vrtID $verID" >> ontologyTerms.txt
    done < tmp.txt
    rm tmp.txt
done < ontologyURIs.txt

# and then sort -u the terms for processing them in this script.

rm -f tmp.txt
rm -f curlHeader.txt
rm -f curlContent.txt

