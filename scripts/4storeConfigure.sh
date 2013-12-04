#!/bin/bash

# Note that the trailing '/' is required on the SparqlURL (and likely required on others too).
triplestoreURL="http://localhost:9000"
triplestoreStatusURL="${triplestoreURL}/status/"
triplestoreSparqlURL="${triplestoreURL}/sparql/"
triplestoreUpdateURL="${triplestoreURL}/update/"
triplestoreDataURL="${triplestoreURL}/data/"

# project graphs

mappingGraphPrefix="http://purl.bioontology.org/mapping"

loomGraph="${mappingGraphPrefix}/loom"
loomGraphEncoded=$(php -r "echo rawurlencode('$loomGraph');")
loomTriplestoreURL="${triplestoreDataURL}${loomGraph}"

umlsCuiGraph="${mappingGraphPrefix}/umls_cui"
umlsCuiGraphEncoded=$(php -r "echo rawurlencode('$umlsCuiGraph');")
umlsCuiTriplestoreURL="${triplestoreDataURL}${umlsCuiGraph}"

umlsGraph="${mappingGraphPrefix}/umls"
umlsGraphEncoded=$(php -r "echo rawurlencode('$umlsCuiGraph');")
umlsTriplestoreURL="${triplestoreDataURL}${umlsCuiGraph}"

uriGraph="${mappingGraphPrefix}/uri_match"
uriGraphEncoded=$(php -r "echo rawurlencode('$uriCuiGraph');")
uriTriplestoreURL="${triplestoreDataURL}${uriCuiGraph}"

tmpBadGraph="${mappingGraphPrefix}/tmpBad"
tmpBadGraphEncoded=$(php -r "echo rawurlencode('$tmpBadGraph');")
tmpBadTriplestoreURL="${triplestoreDataURL}${tmpBadGraph}"

# Other mappings - the 'rest'
#<http://purl.bioontology.org/mapping/rest>

acceptHeader='Accept:text/plain'

countLoomMappingIDs () {
    echo >&2
    curl -s \
        -H $acceptHeader \
        --data-urlencode query@sparql_countLoomMappingIDobjects.rq \
        $triplestoreSparqlURL >&2
    curl -s \
        -H $acceptHeader \
        --data-urlencode query@sparql_countLoomMappingIDsubjects.rq \
        $triplestoreSparqlURL >&2
    curl -s \
        -H $acceptHeader \
        --data-urlencode query@sparql_countBadMappingIDs.rq \
        $triplestoreSparqlURL >&2
    echo >&2
}

tmpFile=$(mktemp -t "curlOutput_XXXX.txt")
tmpHeader=$(mktemp -t "curlHeader_XXXX.txt")

cleanup () {
    rm -f $tmpFile
    rm -f $tmpHeader
    rm -f help.txt
    rm -f $mappingsToDelete
    rm -f curlTmp.out
}

exitStatusGT0 () {
    if [ $1 -gt 0 ]; then
        cleanup
        exit 1
    fi
}

help () {
    if [ -f help.txt ]; then
        cat help.txt >&2
    fi
    cleanup
    exit 1
}


# Test the 4store configuration

touch $tmpHeader
curl -s --dump-header $tmpHeader -o $tmpFile $triplestoreStatusURL
grep -q "200 OK" $tmpHeader
if [ $? -eq 0 ]; then
    echo "$0, INFO: Got an OK response from $triplestoreStatusURL" >&2
else
    echo "$0, ERROR: Failed to get a response from $triplestoreStatusURL" >&2
    cleanup
    exit 1
fi

