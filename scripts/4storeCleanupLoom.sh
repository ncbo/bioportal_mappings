#!/bin/bash

# Configure defines the 4store server URLs and graph variables.
source 4storeConfigure.sh

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 -g {graph} [-s {mappingsRemoveSPARQL.ru}]


The {graph} is a URL for a mapping graph, such as:
http://purl.bioontology.org/mapping/loom
http://purl.bioontology.org/mapping/umls_cui
These are usually specified in 4storeUpdate.sh, which passes them
to this script.

Unless the {mappingsRemoveSPARQL.ru} file is specified, a default is used (see
details for 4storeCreateBadGraph.sh)

The temporary "bad" graph will contain triples of the form: ?mapID a
<http://purl.bioontology.org/mapping/mappings.rdfs#One_To_One_Mapping>
The ?mapID is used in a DESCRIBE query on the {graph} to identify all the
triples that contain the ?mapID.  This is done by the SPARQL in
sparql_loomMappingsToRemove1.rq and sparql_loomMappingsToRemove2.rq; then all of
the bad triples are deleted from {graph}.

END

if [ $# -eq 0 ]; then
    help
    exit 1
fi

graph=""
mappingRemoveFile=""
mappingsToDelete="mappingsToDelete.ru"

while getopts ":hg:s:" opt; do
    case $opt in
        h)
            help
            exit
            ;;
        g)
            graph="$OPTARG"
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

if [ "$graph" == "" ]; then
    help
    exit 1
fi

# ---------------------------------------------------------------------------------
# Remove bad mappings, using SPARQL on the 4store KB.  This process requires
# several stages that might be compressed into one stage when 4store has
# implemented full support for the update syntax of SPARQL 1.1; at the moment,
# it cannot support update queries of the form 'DELETE WHERE {?s ?p ?o}'.  When
# it can, the python script used to generate mappingsToRemove.ru should be
# modified so this process becomes a one-step update request.

echo "$(date): $0, INFO: Starting SPARQL removal of bad mappings." >&2

# Clear the bad mapping graph.
./4storeDeleteGraph.sh -r $badTriplestoreURL
exitStatusGT0 $?

# Run an update query that will populate a new graph with all the mapping
# IDs that are to be removed.
if [ $mappingRemoveFile != "" ]; then
    ./4storeCreateBadGraph.sh -s $mappingRemoveFile
    createSuccess=$?
else
    ./4storeCreateBadGraph.sh
    createSuccess=$?
fi
if [ $createSuccess -gt 0 ]; then
    # The process failed or there are no bad mappings
    exitStatus=1
    if [ $createSuccess -eq 2 ]; then
        # There are no bad mappings
        exitStatus=0
    fi
    cleanup
    exit $exitStatus
fi

# Continue with removing bad mappings.  

# Use the graph of bad mapping IDs to extract all the triples to be removed from
# the {project} graph.  Use a few SPARQL queries to build an update query to
# remove all the bad mappings.  The update query is built in $mappingsToDelete.

if [ -f $mappingsToDelete ]; then
    rm $mappingsToDelete
    touch $mappingsToDelete
fi
cat <<END > $mappingsToDelete
DELETE DATA
{
    GRAPH <$loomGraph>
    {
END

# This query returns all the triples with ?mapId as an object in the loom
# graph, which should be only triples with this pattern:
# ?s = <http://purl.bioontology.org/mapping/mappings.rdfs#One_To_One_Mapping> 
# ?p = <http://purl.bioontology.org/mapping/mappings.rdfs#id>
curl -s \
    -o $tmpFile \
    -H $acceptHeader \
    --data-urlencode query@sparql_loomMappingsToRemove1.rq \
    $triplestoreSparqlURL
# Clean up the output of the query
sed -e 's/^\(.*\)$/\1 \./' $tmpFile | grep -v '^\?.*$' >> $mappingsToDelete

# This query returns a description of all the triples 
# with ?mapId as a subject in the loom graph.
curl -s \
    -o $tmpFile \
    -H $acceptHeader \
    --data-urlencode query@sparql_loomMappingsToRemove2.rq  \
    $triplestoreSparqlURL
# Remove the @base, @prefix and empty lines from the $tmpFile file.
grep -v "^@.*$" $tmpFile | grep -v '^\?.*$' >> $mappingsToDelete

# Complete matching braces
cat <<END >> $mappingsToDelete
    }
}
END

# Run an update query to remove all these triples from the loom graph.
curl -s -i \
    -o $tmpFile \
    --data-urlencode update@$mappingsToDelete \
    $triplestoreUpdateURL
grep -q "error" $tmpFile
if [ $? -eq 0 ]; then
    echo "$(date): $0, ERROR: Failed to cleanup bad loom mappings." >&2
    cat $tmpFile >&2
    cleanup
    exit 1
fi
grep -q '200.*OK' $tmpFile
if [ $? -eq 0 ]; then
    echo "$(date): $0, INFO: Completed SPARQL cleanup of bad loom mappings." >&2
else
    echo "$(date): $0, ERROR: Failed to cleanup bad loom mappings." >&2
    cleanup
    exit 1
fi
countLoomMappingIDs

# Clear the bad mapping graph.
./4storeDeleteGraph.sh -r $badTriplestoreURL
exitStatusGT0 $?

cleanup

