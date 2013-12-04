#!/bin/bash

mappingInputFile=""
tmpSQL="tmp.sql"
delSQL="virtuoso_deleteLoom.sql"
impSQL="virtuoso_importLoom.sql"

loomGraph='http://protege.stanford.edu/ontologies/mappings/loom'
#loomGraphEncoded=$(php -r "echo rawurlencode('$loomGraph');")
#loomBadGraph='http://protege.stanford.edu/ontologies/mappings/loomBad'
#loomBadGraphEncoded=$(php -r "echo rawurlencode('$loomBadGraph');")

# Use NCBO Stage virtuoso server:
triplestoreURL="http://localhost:8890"
triplestoreUpdateURL="${triplestoreURL}/update"
triplestoreSparqlURL="${triplestoreURL}/sparql"
triplestoreDataURL="${triplestoreURL}/data"
triplestoreLoomURL="${triplestoreDataURL}/${loomGraph}"
#triplestoreLoomBadURL="${triplestoreDataURL}/${loomBadGraph}"

acceptHeader='Accept:text/plain'

countMappingIDs () {
    echo >&2
    curl -s \
        -H $acceptHeader \
        --data-urlencode query@sparql_countLoomMappingIDobjects.rq \
        $triplestoreSparqlURL >&2
    #curl -s \
    #    -H $acceptHeader \
    #    --data-urlencode query@sparql_countLoomMappingIDsubjects.rq \
    #    $triplestoreSparqlURL >&2
    echo >&2
}

cleanup () {
    rm -f $tmpSQL
    rm -f help.txt
}

# Update the virtuoso triplestore.
# The documentation for virtuoso isql is at
# http://docs.openlinksw.com/virtuoso/isql.html
host='localhost'
port='1111'
user='username'
pass='userpasswd'
isql='/usr/local/virtuoso-opensource/bin/isql'

