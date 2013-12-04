#!/usr/bin/env python

DEBUG = 0

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

# -------------------------------------------------------------------------
# Bioportal REST interactions
#

def bioportalRestQuery(restURL, restQuery, Accept='application/json'):
    restRequest = urllib2.Request(restURL + restQuery)
    restRequest.add_header('Accept', Accept)
    restResponseStr = "ERROR in bioportalRestQuery"
    try:
        restResponseObj = urllib2.urlopen(restRequest)
    except URLError, e:
        if hasattr(e, "reason"):
            print "We failed to reach a server."
            print "Reason: ", e.reason
        elif hasattr(e, "code"):
            print "The server couldn't fulfill the request."
            print "Error code: ", e.code
    else:
        restResponseStr = restResponseObj.read()
    if DEBUG:
        print "\n\nBIOPORTAL REST QUERY"
        print "QUERY = ", restURL + restQuery
        print "RESPONSE = ", restResponseStr
    return restResponseStr


#"http://rest.bioontology.org/bioportal/virtual/ontology/1062?conceptid=PR:000002396&light=1&norelations=1&apikey=$apiKey"
# Get the 'fullId' as the URI.

#http://rest.bioontology.org/bioportal/search/?query=HP%3A0000008
# Get the 'conceptId' as the URI.

def getBioportalURI(termID, virtOntID):
    restURL = "http://rest.bioontology.org/bioportal"
    restQuery = ""
    restData = {}
    termEscaped = urllib.quote_plus(termID)
    if virtOntID == "":
        restURL += "/search/"
        restQuery += "?query=" + termEscaped
    else:
        restURL += "/virtual/ontology/" + virtOntID
        restQuery += "?conceptid=%s&light=1&norelations=1" % termEscaped
    restQuery += "&apikey=" + apiKey
    jsonStr = bioportalRestQuery(restURL, restQuery)
    jsonObj = json.loads(jsonStr)
    success = jsonObj["success"]
    jsonData = success["data"]
    dataHash = jsonData[0]
    # Create default return values.
    termURI = "ERROR in getBioportalURI"
    termLabel = ""
    if virtOntID == "":
        # Unpack the JSON to get the "data", which contains a "conceptId".
        contentHash = dataHash["contents"]
        searchHash = contentHash["searchResultList"]
        searchBean = searchHash["searchBean"]
        termURI = searchBean["conceptId"]
        termLabel = searchBean["label"]
        recordType = searchBean["recordType"]
        if recordType.find("bconceptid"):
            recordOK = True
        else:
            recordOK = False
        #for dk in searchBean:
        #   recordType = searchBean["recordType"]
        #   if recordType.find("bconceptid"):
        #       recordOK = True
        #   termURI = searchBean["conceptId"]
        #   termLabel = searchBean["label"]
        if recordOK:
            return termURI, termLabel
    else:
        # Unpack the JSON to get the "data", which contains a "fullId".
        termURI = dataHash["fullId"]
        termLabel = dataHash["label"]
    return termURI, termLabel

# -------------------------------------------------------------------------
# term validation
#

def getTermURI(termID, virtOntID):
    termURI, termLabel = getBioportalURI(termID, virtOntID)
    if validTerm(termURI):
        return termURI

def validTerm(termURI):
    if termURI.find("ERROR") >= 0:
        return False
    return True

