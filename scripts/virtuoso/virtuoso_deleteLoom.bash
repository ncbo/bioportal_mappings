#!/bin/bash

source virtuoso_configLoom.bash

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 [options]

-h  help
-r  remove loom triples

This process should clear the loom graph in virtuoso.  The loom graph URI is:
$loomGraph

To upload triples into the loom graph, use virtuoso_uploadLoom.bash

END

if [ $# -eq 0 ]; then
    cat help.txt >&2
    cleanup
    exit 1
fi

remove=0
while getopts ":hr" opt; do
    case $opt in
        h)
            cat help.txt >&2
            cleanup
            exit
            ;;
        r)
            remove=1
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

if [ $remove -eq 0 ]; then
    echo "$(date): ERROR: Use -r to remove loom triples." >&2
    cat help.txt >&2
    cleanup
    exit 1
fi

# Update the virtuoso triplestore.
# The documentation for virtuoso isql is at
# http://docs.openlinksw.com/virtuoso/isql.html
if [ -x "$isql" ]; then
    # Remove the old loom graph.
    echo "$(date): Starting isql process to delete loom graph." >&2
    $isql 1111 $user $pass < $delSQL
    if [ $? -eq 0 ]; then
        echo "$(date): Completed isql process to delete loom graph." >&2
    else
        echo "$(date): ERROR: Failed to delete loom graph." >&2
        exit 1
    fi
else
    # TODO: Can we run this some other way?
    echo "$(date): ERROR: isql is not available." >&2
    cleanup
    exit 1
fi

cleanup

