#!/bin/bash

# Configure defines the 4store server URLs and graph variables.
source 4storeConfigure.sh

# ---------------------------------------------------------------------------------
# Process input arguments
#

cat <<END > help.txt

Usage: $0 -h -r {removeGraphURL}

-h help
-r remove the {removeGraphURL}, which should be compatible with the
   4store convention, see: http://4store.org/trac/wiki/SparqlServer

END

if [ $# -eq 0 ]; then
    help
fi

graph=""

while getopts ":hr:" opt; do
    case $opt in
        h)
            cat help.txt >&2
            cleanup
            exit
            ;;
        r)
            graph="$OPTARG"
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
fi

tmpFile="tmp$$.txt"
echo "$(date): $0, INFO: Starting delete of $graph." >&2
curl -s -i -X DELETE $graph > $tmpFile
grep -q "success" $tmpFile
if [ $? -eq 0 ]; then
    echo "$(date): $0, INFO: Completed graph delete." >&2
else
    echo "$(date): $0, ERROR: Failed to delete graph." >&2
    cat $tmpFile >&2
    rm -f $tmpFile
    exit 1
fi

rm -f $tmpFile

