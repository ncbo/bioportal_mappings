#!/bin/bash

# Configure defines the 4store server URLs and graph variables.
source 4storeConfigure.sh

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 [-s <mappingsRemoveSPARQL.ru>]

Unless the <mappingsRemoveSPARQL.ru> file is specified explicitly, the
mappingsToRemove.ru file is used. That file is generated automatically from
mappingsToRemoveAsSPARQL.py, which parses mappingsToRemove.sql to generate
SPARQL that will populate a new graph with mapping IDs to be removed. The new
graph is temporarily created at: $tmpBadGraph

END

if [ $# -eq 0 ]; then
    cat help.txt >&2
    cleanup
    exit 1
fi

mappingRemoveFile=""

while getopts ":hs:" opt; do
    case $opt in
        h)
            cat help.txt >&2
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

if [ "$mappingRemoveFile" == "" ]; then
    # No file specified on command line, use a default and verify that
    # it's up-to-date or recreate it.
    mappingRemoveFile="mappingsToRemove.ru"
    pythonScript="mappingsToRemoveAsSPARQL.py"
    pythonScriptRun=0
    if [ -f "$mappingRemoveFile" ]; then
        # Run the python script when the .ru file is older than it.
        if [ "$mappingRemoveFile" -ot "$pythonScript" ]; then
            pythonScriptRun=1
        fi
    else
        # Run the python script when there is no SPARQL file to generate bad
        # mappings.
        pythonScriptRun=1
    fi
    if [ $pythonScriptRun -eq 1 ]; then
        if [ ! -f "$pythonScript" ]; then
            echo "$(date): $0, ERROR: There is a missing python script: $pythonScript" >&2
            exit 1
        fi
        ./$pythonScript > mappingsToRemoveWithComments.ru
        if [ $? -gt 0 ]; then
            echo "$(date): $0, ERROR: Failed to run python script." >&2
            echo "$(date): $0, ERROR: Failed to create mapping remove SPARQL file: $mappingRemoveFile" >&2
            exit 1
        fi
        grep -v "^#" mappingsToRemoveWithComments.ru > $mappingRemoveFile
    fi
fi
if [ ! -f $mappingRemoveFile ]; then
    echo "$(date): $0, ERROR: There is no mapping remove SPARQL file: $mappingRemoveFile" >&2
    exit 1;
fi

echo "$(date): $0, INFO: Using SPARQL file: $mappingRemoveFile" >&2

# Run an update query that will populate a new graph with all the mapping
# IDs that are to be removed.
curl -s -i \
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
grep -q '200.*OK' $tmpFile
if [ $? -eq 0 ]; then
    echo "$(date): $0, INFO: Completed population of new tmpBad graph." >&2
else
    echo "$(date): $0, INFO: Failed to populate tmpBad graph." >&2
    cat $tmpFile >&2
    cleanup
    exit 1
fi
countLoomMappingIDs


# Check the tmpBad graph for any content.
# This query returns a count of all the triples in the tmpBad graph that match:
# ?mapID a mapRDFS:One_To_One_Mapping .
curl -s \
    -o $tmpFile \
    -H $acceptHeader \
    --data-urlencode query@sparql_countBadMappingIDs.rq \
    $triplestoreSparqlURL 
# Are there are any mappings to be removed?
if [ -s $tmpFile ]; then
    anythingToRemove=$(grep -v '^\?.*' $tmpFile | grep -v "^ *$")
    if [ $anythingToRemove -eq 0 ]; then
        echo "$(date): $0, INFO: There are no bad loom mappings to remove." >&2
        cleanup
        exit 2
    fi
else
    echo "$(date): $0, INFO: There are no bad loom mappings to remove." >&2
    cleanup
    exit 2
fi

cleanup

