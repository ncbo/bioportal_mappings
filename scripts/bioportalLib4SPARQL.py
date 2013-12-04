#!/usr/bin/env python

DEBUG = 0

import sys
import traceback
import urllib
import urllib2

import socket
socketTimeout = 30 # socket timeout in seconds
socket.setdefaulttimeout(socketTimeout)

import json
#>>> data = {"spam" : "foo", "parrot" : 42}
#>>> in_json = json.dumps(data) # Encode the data
#>>> json.loads(in_json) # Decode into a Python object

apiKey = "XXXX"

sparqlService = "http://sparql.bioontology.org/sparql/"

# -------------------------------------------------------------------------
# Bioportal alphasparql interactions
#

def querySPARQL(sparql,apikey,epr,f='application/json'):
    """Function that uses urllib/urllib2 to issue a SPARQL query.
    By default it requests json results."""
    try:
        params = {'query': sparql, 'apikey': apikey}
        params = urllib.urlencode(params)
        opener = urllib2.build_opener(urllib2.HTTPHandler)
        request = urllib2.Request(epr+'?'+params)
        request.add_header('Accept', f)
        request.get_method = lambda: 'GET'
        url = opener.open(request)
        return url.read()
    except Exception, e:
        traceback.print_exc(file=sys.stdout)
        raise e

def check4storeURI(termURI):
    """Query the triple store with a term URI to validate that it exists
    in the triple store.  This can be used when a term URI is obtained from the
    bioportal REST service."""
    queryData = {
                "termURI": termURI,
    }
    queryStr = """
SELECT DISTINCT ?termURI
WHERE {
  ?termURI a <http://www.w3.org/2002/07/owl#Class> .
  FILTER(?termURI = <%(termURI)s>)
}
""" % queryData
    jsonStr = querySPARQL(queryStr, apiKey, sparqlService)
    jsonObj = json.loads(jsonStr)
    #print "\n\n", queryStr, jsonStr #, jsonObj
    resultTermURI = "ERROR in check4storeURI"
    resultBindings = jsonObj["results"]["bindings"]
    if len(resultBindings) > 0:
        if len(resultBindings) > 1:
            print "# WARNING: More than one term found in triple store for:"
            print "# " + termURI
        termDict = resultBindings[0]
        resultTermURI = termDict["termURI"]["value"]
    if DEBUG:
        print "\n\n4STORE QUERY"
        print "QUERY = ", queryStr
        print "JSON =", jsonStr
    return resultTermURI

def getTermURI4prefLabel(termLabel, virtOntID):
    """Query the triple store with a term label and virtual ontology ID, to
    obtain a term URI."""
    queryData = {
                "termLabel": termLabel,
                "virtOntID": virtOntID,
                }
    queryStr = """
SELECT DISTINCT ?termURI ?prefLabel
FROM <http://bioportal.bioontology.org/ontologies/%(virtOntID)s>
FROM <http://bioportal.bioontology.org/ontologies/globals>
WHERE {
      ?termURI a <http://www.w3.org/2002/07/owl#Class> ;
      <http://www.w3.org/2004/02/skos/core#prefLabel> ?prefLabel .
      FILTER(str(?prefLabel) = "%(termLabel)s")
}
""" % queryData
    jsonStr = querySPARQL(queryStr, apiKey, sparqlService)
    jsonObj = json.loads(jsonStr)
    #print "\n\n", queryStr, jsonStr #, jsonObj
    resultTermURI = "ERROR in get4storeURI"
    resultTermLabel = ""
    resultBindings = jsonObj["results"]["bindings"]
    #if len(resultBindings) == 1:
    if len(resultBindings) > 0:
        termDict = resultBindings[0]
        resultTermURI = termDict["termURI"]["value"]
        resultTermLabel = termDict["prefLabel"]["value"]
    if DEBUG:
        print "\n\n4STORE QUERY"
        print "QUERY = ", queryStr
        print "JSON =", jsonStr
    return resultTermURI, resultTermLabel

