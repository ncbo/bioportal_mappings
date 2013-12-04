#!/bin/bash

# Configure defines the 4store server URLs and graph variables.
source 4storeConfigure.sh

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 -s {mappingsRemoveSPARQL.ru}

An example of the {mappingsRemoveSPARQL.ru} file is the mappingsToRemove.ru
file. That file is generated automatically from mappingsToRemoveAsSPARQL.py,
which converts mappingsToRemove.sql into SPARQL, which will populate a temporary
graph with mapping IDs to be removed. The temporary graph is created at:
$tmpBadGraph

END

if [ $# -eq 0 ]; then
    help
    exit 1
fi

mappingRemoveFile=""

while getopts ":hs:" opt; do
    case $opt in
        h)
            help
            cleanup
            exit
            ;;
        s)
            mappingRemoveFile="$OPTARG"
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

if [ ! -s "$mappingRemoveFile" ]; then
    echo "$(date): $0, ERROR: There is no mapping remove SPARQL file: $mappingRemoveFile" >&2
    help
    cleanup
    exit 1
fi

echo "$(date): $0, INFO: Using SPARQL file: $mappingRemoveFile" >&2

# Run an update query that will populate a new graph with all the mapping
# IDs that are to be removed.
curl -s \
    --dump-header $tmpHeader \
    -o $tmpFile \
    --data-urlencode update@$mappingRemoveFile \
    $triplestoreUpdateURL
grep -q "error" $tmpFile
if [ $? -eq 0 ]; then
    echo "$(date): $0, INFO: Failed to populate tmpBad graph." >&2
    cat $tmpFile >&2
    cleanup
    exit 1
fi
grep -q '200.*OK' $tmpHeader
if [ $? -eq 0 ]; then
    echo "$(date): $0, INFO: Completed population of new tmpBad graph." >&2
else
    echo "$(date): $0, INFO: Failed to populate tmpBad graph." >&2
    cat $tmpFile >&2
    cleanup
    exit 1
fi
countBadMappingIDs

# Check the tmpBad graph for any content.
# This query returns a count of all the triples in the tmpBad graph that match:
# ?mapID a mapRDFS:One_To_One_Mapping .
tmpSPARQL=$(mktemp -t "tmpSPARQL_XXX.rq")
cat <<END > $tmpSPARQL
PREFIX mapRDFS: <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>

SELECT (count(?mapID) as ?countBadIDs)
WHERE
{
    GRAPH <$tmpBadGraph>
    {
        ?mapID a mapRDFS:One_To_One_Mapping .
    }
}
END
curl -s \
    -o $tmpFile \
    -H $acceptHeader \
    --data-urlencode query@$tmpSPARQL \
    $triplestoreSparqlURL 
# Are there are any mappings to be removed?
if [ -s $tmpFile ]; then
    anythingToRemove=$(grep -v '^\?.*' $tmpFile | grep -v "^ *$")
    if [ "$anythingToRemove" == "0" ]; then
        echo "$(date): $0, INFO: There are no bad mappings to remove." >&2
        cleanup
        exit 2
    fi
else
    echo "$(date): $0, INFO: There are no bad mappings to remove." >&2
    cleanup
    exit 2
fi

getBadMappingIDs
cleanup

