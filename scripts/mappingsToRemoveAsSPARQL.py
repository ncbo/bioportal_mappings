#!/usr/bin/env python

DEBUG = 0

import sys
import subprocess
import traceback
import urllib
import urllib2

import re
srcRegex = re.compile(".*source_id=\"(.*?)\"\s+")
dstRegex = re.compile(".*destination_id=\"(.*?)\"\s+")
srcOntRegex = re.compile(".*source_ont=(\d*)")
dstOntRegex = re.compile(".*destination_ont=(\d*)")


import socket
socketTimeout = 30 # socket timeout in seconds
socket.setdefaulttimeout(socketTimeout)

import json
#>>> data = {"spam" : "foo", "parrot" : 42}
#>>> in_json = json.dumps(data) # Encode the data
#>>> json.loads(in_json) # Decode into a Python object

apiKey = "XXXX"

# Define SPARQL prefixes.
rdfPrefixDict = {
    "mapRDFS":"<http://purl.bioontology.org/mapping/mappings.rdfs#>",
    "xmls":"<http://www.w3.org/2001/XMLSchema#>",
    "loom":"<http://purl.bioontology.org/mapping/loom>",
    "loomBad":"<http://purl.bioontology.org/mapping/loomBad>",
}

# Use the prefixes to define properties used in mappings.
propertyDict = {
    "xmlsInt": "^^xmls:integer",
    "mapType": "mapRDFS:One_To_One_Mapping",
    "srcProperty": "mapRDFS:source",
    "dstProperty": "mapRDFS:target",
    "srcOntProperty": "mapRDFS:source_ontology_id",
    "dstOntProperty": "mapRDFS:target_ontology_id",
}


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
    """Query the 4store triple store with a term URI to validate that it exists
    in the triple store.  This is used when a term URI is obtained from the
    bioportal REST service."""
    queryData = {
                "termURI": termURI,
    }
    queryStr = """
PREFIX owl: <http://www.w3.org/2002/07/owl#>
SELECT DISTINCT ?termURI
WHERE {
  ?termURI a owl:Class .
  FILTER(?termURI = <%(termURI)s>)
}
""" % queryData
    sparqlService = "http://alphasparql.bioontology.org/sparql/"
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

def get4storeURI(termLabel, virtOntID):
    """Query the 4store triple store with a term label and virtual ontology ID, to
    obtain a term URI."""
    queryData = {
                "termLabel": termLabel,
                "virtOntID": virtOntID,
                }
    queryStr = """
PREFIX owl:  <http://www.w3.org/2002/07/owl#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
SELECT DISTINCT ?termURI ?prefLabel
FROM <http://bioportal.bioontology.org/ontologies/%(virtOntID)s>
FROM <http://bioportal.bioontology.org/ontologies/globals>
WHERE {
      ?termURI a owl:Class;
      skos:prefLabel ?prefLabel .
      FILTER(str(?prefLabel) = "%(termLabel)s")
}
""" % queryData
    sparqlService = "http://alphasparql.bioontology.org/sparql/"
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

def validTerm(termURI, termID=None, termOnt=None, typeStr=""):
    if termURI.find("ERROR") >= 0:
        # Note the error in SPARQL comments
        print "# ERROR: Unresolved or invalid termURI."
        print "# termURI: %s." % termURI
        if termID:
            print "# %s termID: %s." % (typeStr, termID)
        if termOnt:
            print "# %s ontID: %s." % (typeStr, termOnt)
        return False
    return True

def checkTermURI(termURI):
    termURI = checkTermsInHL7(termURI)
    termURI4store = check4storeURI(termURI)
    if not validTerm(termURI4store):
        return termURI
    termURI = swapTermURI(termURI, termURI4store)
    return termURI

def checkTermsInHL7(termURI):
    if termURI.find("ontology/HL7") >= 0:
        regexTermID = re.compile(".*/(.*)$")
        m = regexTermID.match(termURI)
        termID = m.group(1).strip('>')
        termURI = getTermURI(termID, "1343")
    return termURI

def getTermURI(termID, virtOntID):
    termURI, termLabel = getBioportalURI(termID, virtOntID)
    if not validTerm(termURI, termID, virtOntID):
        return termURI
    # We need to resolve HL7 with the alphasparql service, because the 4store
    # has a new version of HL7 and the URIs are auto-generated for each version,
    # so we cannot identify bad mappings in the 4store without this translation.
    # We can resolve REST termURIs against 4store termURIs using the termLabel
    # and a virtual ontology ID.
    termURI4store, tmpTermLabel = get4storeURI(termLabel, virtOntID)
    if not validTerm(termURI4store, termID, virtOntID):
        return termURI
    termURI = swapTermURI(termURI, termURI4store)
    return termURI

def swapTermURI(termURI, termURI4store):
    if termURI != termURI4store:
        # Use the 4store URI
        termURI = termURI4store
    return termURI

# -------------------------------------------------------------------------
# SPARQL printout functions
#

def insertWhereLoomOpen():
    printDict = rdfPrefixDict
    printDict.update(propertyDict)
    print """INSERT 
{
    GRAPH %(loomBad)s
    {
        ?mapID a %(mapType)s .
    }
}
WHERE
{
    GRAPH %(loom)s
    {""" % printDict

def insertWhereLoomClose():
    print """
    }
};"""

def printSPARQL(srcURI, srcOnt, dstURI, dstOnt):
    printDict = propertyDict
    printDict["srcURI"] = srcURI
    printDict["srcOnt"] = srcOnt
    printDict["dstURI"] = dstURI
    printDict["dstOnt"] = dstOnt
    print """        ?mapID a %(mapType)s ;
            %(srcProperty)s <%(srcURI)s> ;
            %(dstProperty)s <%(dstURI)s> ;
            %(srcOntProperty)s \"%(srcOnt)s\"%(xmlsInt)s ;
            %(dstOntProperty)s \"%(dstOnt)s\"%(xmlsInt)s .""" % printDict


# -------------------------------------------------------------------------
# Print prefixes
#
print """
#
# THIS FILE AUTOMATICALLY GENERATED BY 
# mappingsToRemoveAsSPARQL.py
# WHICH USES
# mappingsToRemove.sql
#

PREFIX mapRDFS: %(mapRDFS)s
PREFIX xmls: %(xmls)s
PREFIX loom: %(loom)s
PREFIX loomBad: %(loomBad)s

# The SPARQL update queries in this file must be explicit about 
# pulling mapping IDs from the loom graph into a new loomBad graph.

""" % rdfPrefixDict


print """
# -----------------------------------------------------------------------
# Remove some mappings on units of measurement between
#PREFIX HL7: <http://purl.bioontology.org/ontology/HL7>
#PREFIX nciThesaurus: <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl>
"""
# This hash maps two term URIs.
termDict = {
    "http://purl.bioontology.org/ontology/HL7/12627_GL" :
    "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gal",
    "http://purl.bioontology.org/ontology/HL7/12665_[RD_US]" :
    "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Rod_US",
    "http://purl.bioontology.org/ontology/HL7/12593_AR" :
    "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Are",
    "http://purl.bioontology.org/ontology/HL7/12805_[PSI]" :
    "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pound_per_Square_Inch",
}
for uriA, uriB in termDict.items():
    printDict = propertyDict
    printDict["uriA"] = checkTermURI(uriA)
    printDict["uriB"] = checkTermURI(uriB)
    insertWhereLoomOpen()
    print """
        ?mapID a %(mapType)s ;
            %(srcProperty)s <%(uriA)s> ;
            %(dstProperty)s ?dstURI .
            FILTER ( ?dstURI != <%(uriB)s> )""" % printDict
    insertWhereLoomClose()
    insertWhereLoomOpen()
    print """
        ?mapID a %(mapType)s ;
            %(dstProperty)s <%(uriA)s> ;
            %(srcProperty)s ?srcURI .
            FILTER ( ?srcURI != <%(uriB)s> )""" % printDict
    insertWhereLoomClose()


# Property sets/paths are not supported in 4store. Same functionality can be implemented as ...
#print qq(
#SELECT ?x WHERE {
#       ?x a ns:SomeType .
#   OPTIONAL { ?x ns:someProp ?y . }
#       FILTER ( !bound(?y) )
#}
#);


print """
# -----------------------------------------------------------------------
#
# Remove some terms from all mappings in some ontologies.
# ontID 1032 is http://purl.bioontology.org/ontology/NCIt
#
"""
insertWhereLoomOpen()
# This hash maps ontology ID to term URI.
termDict = {
    "1032" : "http://purl.bioontology.org/ontology/HL7/12673_[ACR_US]",
}
for ontID, termURI in termDict.items():
    printDict = propertyDict
    printDict["ontID"] = ontID
    printDict["termURI"] = checkTermURI(termURI)
    print """
        ?mapID a %(mapType)s ;
            %(srcProperty)s <%(termURI)s> ;
            %(dstOntProperty)s \"%(ontID)s\"%(xmlsInt)s .
        ?mapID a %(mapType)s ;
            %(dstProperty)s <%(termURI)s> ;
            %(srcOntProperty)s \"%(ontID)s\"%(xmlsInt)s .""" % printDict
insertWhereLoomClose()


print """
# -----------------------------------------------------------------------
#
# Remove some terms from all mappings for
# http://purl.bioontology.org/ontology/HL7
#
"""
insertWhereLoomOpen()
termArray = [
    "http://purl.bioontology.org/ontology/HL7/12607_BAR",
    "http://purl.bioontology.org/ontology/HL7/12794_B",
]
for termURI in termArray:
    printDict = propertyDict
    printDict["termURI"] = checkTermURI(termURI)
    print """
        ?mapID a %(mapType)s ;
            %(srcProperty)s <%(termURI)s> .
        ?mapID a %(mapType)s ;
            %(dstProperty)s <%(termURI)s> .""" % printDict
insertWhereLoomClose()



print """
# -----------------------------------------------------------------------
#
# Remove specific faulty mappings for
# http://purl.bioontology.org/ontology/HL7
#
"""
# Parse a large section of the SQL file (the sedPattern pulls it out)
sqlFile  = "mappingsToRemove.sql"
grepPattern = "\"source_ont=.*destination_ont\""
grepCmd = "grep %s %s" % (grepPattern, sqlFile)
sedPattern  = "\"s/.*\\(source_ont=[0-9]*.*destination_ont=[0-9]*\\).*/\\1/\""
sedCmd = "sed -e %s" % sedPattern
cmd = "%s | %s | sort -u > tmp.txt" % (grepCmd, sedCmd)
try:
    retcode = subprocess.call(cmd, shell=True)
    if retcode < 0:
        print >>sys.stderr, "Child was terminated by signal", -retcode
    else:
        #print >>sys.stderr, "Child returned", retcode
        pass
except OSError, e:
    print >>sys.stderr, "Execution failed:", e

insertWhereLoomOpen()
tmpFile = open("tmp.txt")
for tmpLine in tmpFile:
    pattern = tmpLine.strip()
    srcFile = open(sqlFile)
    for srcLine in srcFile:
        line = srcLine.strip()
        if re.match(".*(%s).*" % pattern, line ):
            #print line
            srcID = dstID = srcOnt = dstOnt = ""
            srcResult = srcRegex.match(line)
            dstResult = dstRegex.match(line)
            srcOntResult = srcOntRegex.match(line)
            dstOntResult = dstOntRegex.match(line)
            srcID = srcResult.group(1)
            dstID = dstResult.group(1)
            srcOnt = srcOntResult.group(1)
            dstOnt = dstOntResult.group(1)
            #print srcID, dstID, srcOnt, dstOnt
            # Resolve term IDs into full URIs; this was tested and errors
            # were resolved by changes to the sqlFile.
            srcURI = getTermURI(srcID, srcOnt)
            dstURI = getTermURI(dstID, dstOnt)
            printTerm = validTerm(srcURI, srcID, srcOnt, "Source") and \
                        validTerm(dstURI, dstID, dstOnt, "Destination")
            if printTerm:
                # Output SPARQL; alternate the src/dst
                printSPARQL(srcURI, srcOnt, dstURI, dstOnt)
                printSPARQL(dstURI, dstOnt, srcURI, srcOnt)
            print
insertWhereLoomClose()
try:
    cmd = "rm tmp.txt"
    retcode = subprocess.call(cmd, shell=True)
    if retcode < 0:
        print >>sys.stderr, "Child was terminated by signal", -retcode
    else:
        #print >>sys.stderr, "Child returned", retcode
        pass
except OSError, e:
    print >>sys.stderr, "Failed command '" + cmd + "':", e


