#!/bin/bash

# Configure defines the 4store server URLs and graph variables.
source 4storeConfigure.sh

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 -o <mappingOutputFile.nt>

The triples in the $loomGraph are
dumped into an ntriples file: <mappingOutputFile.nt>.

END

if [ $# -eq 0 ]; then
    cat help.txt >&2
    cleanup
    exit 1
fi

mappingOutputFile=""

while getopts ":ho:" opt; do
    case $opt in
        h)
            cat help.txt >&2
            cleanup
            exit
            ;;
        o)
            mappingOutputFile="$OPTARG"
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

if [ "$mappingOutputFile" == "" ]; then
    cat help.txt >&2
    cleanup
    exit 1
fi

echo "$(date): $0, INFO: Using ouput: $mappingOutputFile" >&2
echo "$(date): $0, INFO: Starting dump for loom mappings." >&2
curl -s \
    -o $mappingOutputFile \
    -H $acceptHeader \
    --data-urlencode query@sparql_loomMappingsOK.rq  \
    $triplestoreSparqlURL
if [ $? -eq 0 ]; then
    echo "$(date): $0, INFO: Completed dump for loom mappings." >&2
else
    echo "$(date): $0, ERROR: Failed to dump loom mappings." >&2
    cleanup
    exit 1
fi

cleanup

