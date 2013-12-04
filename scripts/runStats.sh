#!/bin/bash

help () {
    echo "$0 [options]" >&2
    echo "-h =>  help" >&2
    echo "-p {projectName} => run tasks for projectName ('loom', 'umls_cui', 'uri_match')" >&2
    echo "-t {termsFile} => obtain data from termsFile" >&2
    echo "-u {fieldURL} => text field in {termsFile} for term URI" >&2
    echo "-o {fieldONT} => text field in {termsFile} for ontology ID" >&2
}


# ---------------------------------------------------------------------------
# Parse the input arguments
projectName=""
fieldURL=3
fieldONT=4

while getopts ":hp:t:u:o:" opt; do
    case $opt in
        h)
            help
            exit
            ;;
        p)
            projectName="$OPTARG"
            ;;
        t)
            termsFile="$OPTARG"
            ;;
        u)
            fieldURL="$OPTARG"
            ;;
        o)
            fieldONT="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done

# ---------------------------------------------------------------------------
# Check that a {project} is specified.
if [ "$projectName" == "" ]; then
    help
    exit
fi

# Create a custom tmp path for sort, because BMIR often uses a very small /tmp
if [ -d /ncbodata/tmp ]; then
    sortTmp="--temporary-directory=/ncbodata/tmp"
else
    sortTmp=""
fi

# ---------------------------------------------------------------------------
# Check for a terms file and a sorted, unique terms file.
if [ ! -r $termsFile ]; then
    echo "$(date) $0, ERROR: no terms file: $termsFile" >& 2
    exit 1
fi
tmpFile=$(echo $termsFile | sed -e "s/.txt$//" -e "s/_terms//")
sortedUniqFile=${tmpFile}_sortedUnique.txt
if [ ! -r $sortedUniqFile ]; then
    echo "$(date) $0, ERROR: no sorted, unique terms file: $sortedUniqFile" >& 2
    exit 1
fi

statsFile=${tmpFile}_stats.txt

mapFilePattern=${tmpFile}_mappings
mapDupsTurtle=${mapFilePattern}Duplicates.ttl
mapDupsFile=${mapFilePattern}Duplicates.txt
mapUniqFile=${mapFilePattern}Uniq.txt
mapUrlFile=${mapFilePattern}URL.txt
mapIdFile=${mapFilePattern}ID.txt

# Generate summary stats for ontologies and terms.
ontCount=$(cut -f$fieldONT $sortedUniqFile | sort -u $sortTmp | wc -l)
ontTerms=$(cut -f$fieldURL $sortedUniqFile | sort -u $sortTmp | wc -l)
ontTermLabels=$(cat $sortedUniqFile | wc -l)
ontTermPrefLabels=$(fgrep 'skos:prefLabel' $sortedUniqFile | wc -l)
ontTermAltLabels=$(fgrep 'skos:altLabel' $sortedUniqFile | wc -l)
ontTermCuiLabels=$(fgrep 'umlsCui' $sortedUniqFile | wc -l)

# Extract the mapping URL
grep -h -F 'One_To_One_Mapping' ${mapFilePattern}_???.ttl | \
    sed -e 's/<\(.*\)>.*/\1/' > $mapUrlFile
# Extract the mapping hash ID
sed -e 's#.*/##' $mapUrlFile > $mapIdFile

# REGEX patterns to be applied on the mapUniqFile
regexOne="^[[:space:]]+1 " 
regexTwo="^[[:space:]]+2 " 
regexSed="s/^[[:space:]]*[[:digit:]]*[[:space:]]//" 

# Identify the unique mapping IDs
uniq -c $mapIdFile > $mapUniqFile
# Identify the duplicate mapping IDs
egrep -v $regexOne $mapUniqFile > $mapDupsFile
# Extract all the duplicate mapping entities
rm -f $mapDupsTurtle
for f in $(sed -e $regexSed $mapDupsFile); do
    grep -h -F -A 17 $f ${mapFilePattern}_???.ttl >> $mapDupsTurtle
done

mapUniq=$(cat $mapUniqFile | wc -l)
mapUniqOne=$(egrep $regexOne $mapUniqFile | wc -l)
mapUniqTwo=$(egrep $regexTwo $mapUniqFile | wc -l)
mapUniqGtOne=$(egrep -v $regexOne $mapUniqFile | wc -l)
mapUniqGtTwo=$(egrep -v $regexOne $mapUniqFile | egrep -v $regexTwo | wc -l)

cat > $statsFile <<EOF

Number of ontologies:       $ontCount
Number of total terms:      $ontTermLabels
Number of unique term URLs: $ontTerms
Number of preferred labels: $ontTermPrefLabels
Number of alternate labels: $ontTermAltLabels
Number of UMLS-CUI  labels: $ontTermCuiLabels

All unique mappings:            $mapUniq
Mappings without duplicates:    $mapUniqOne
Mappings with duplicates:       $mapUniqGtOne
Mappings with two instances:    $mapUniqTwo
Mappings with > two instances:  $mapUniqGtTwo
EOF

echo
echo "Stats, using mapping files:"
ls -1 ${mapFilePattern}_???.*
echo
cat $statsFile
echo

