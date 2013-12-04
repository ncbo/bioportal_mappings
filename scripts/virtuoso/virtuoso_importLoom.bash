#!/bin/bash

source virtuoso_configLoom.bash

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 [options]

-h  help
-i  <mappingInputFile>

The <mappingInputFile> is an ntriples or turtle file.  This input argument
is required.  This process should upload the triples into the loom graph in
virtuoso.  The loom graph URI is:
$loomGraph

To clear the loom graph, use virtuoso_deleteLoom.bash

END

if [ $# -eq 0 ]; then
    cat help.txt >&2
    cleanup
    exit 1
fi

while getopts ":hi:" opt; do
    case $opt in
        h)
            cat help.txt >&2
            cleanup
            exit
            ;;
        i)
            mappingInputFile="$OPTARG"
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

if [ ! -f "$mappingInputFile" ]; then
    echo "$(date): ERROR: No mapping file found: $mappingInputFile" >&2
    exit 1;
fi

# Update the virtuoso triplestore.
# The documentation for virtuoso isql is at
# http://docs.openlinksw.com/virtuoso/isql.html
if [ -x "$isql" ]; then
    # Upload the new loom graph.
    echo "$(date): Starting isql process to upload loom triples." >&2
    echo >&2
    echo "input:    $mappingInputFile" >&2
    echo >&2
    cat $impSQL | sed -e "s#MAPPING_FILE_REGEX#${mappingInputFile}#" > $tmpSQL
    $isql 1111 $user $pass < $tmpSQL
    if [ $? -eq 0 ]; then
        echo "$(date): Completed isql process to upload loom triples." >&2
        cleanup
    else
        echo "$(date): ERROR: Failed to upload loom triples." >&2
        echo "$(date): Import SQL file contained:" >&2
        cat $tmpSQL >&2
        cleanup
        exit 1
    fi
else
    # TODO: Can we run this some other way?
    echo "$(date): ERROR: isql is not available." >&2
    cleanup
    exit 1
fi

cleanup

