#An standalone API for 4store

import sys
import urllib,urllib2
import traceback
import pdb
import time                                                
import json
import os
import subprocess

PREFIXES = """PREFIX xsd:  <http://www.w3.org/2001/XMLSchema#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX dc:   <http://purl.org/dc/elements/1.1/>
PREFIX dct:  <http://purl.org/dc/terms/>
PREFIX rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl:  <http://www.w3.org/2002/07/owl#>
PREFIX bio:  <http://purl.org/vocab/bio/0.1/>
PREFIX meta: <http://bioportal.bioontology.org/metadata/def/> 
PREFIX graphs: <http://purl.bioontology.org/def/graphs/>
PREFIX omv: <http://omv.ontoware.org/2005/05/ontology#>
"""

userID = "XXXX"
userNAME = "XXXX"
userAPIKEY = "XXXX"
API_KEY_ADMIN = userID

class SPARQL:
    def __init__(self,epr,api_key=None):
        self.epr = epr
        self.api_key = api_key
    def pq(self,q):
        print query(PREFIXES+q,self.epr,f='text/plain',api_key=self.api_key)
    def query_as_text(self,q):
        return query(q,self.epr,f='text/plain',api_key=self.api_key)
    def count(self):
        return int(self.query("select (count(?s) as ?c) where { GRAPH ?g { ?s ?p ?o }}")[0]["c"])
    def query(self,x):
        o=query(PREFIXES+x,self.epr,f='application/json',api_key=self.api_key)
        return parse_json_result(o)
    def count_in_graph(self,g):
        return int(self.query("select (count(?s) as ?c) where { GRAPH <%s> { ?s ?p ?o }}"%g)[0]["c"])
    def predicates_in_graph(self,g):
        return [x["p"] for x in self.query("select DISTINCT ?p where { GRAPH <%s> { ?s ?p ?o }}"%g)]
    def subjects_in_graph(self,g):
        return [x["s"] for x in self.query("select DISTINCT ?s where { GRAPH <%s> { ?s ?p ?o }}"%g)]
    def objects_in_graph(self,g):
        return [x["o"] for x in self.query("select DISTINCT ?o where { GRAPH <%s> { ?s ?p ?o }}"%g)]
    def types_in_graph(self,g):
        return [x["o"] for x in self.query("select DISTINCT ?o where { GRAPH <%s> { ?s a ?o }}"%g)]

locHost = "127.0.0.1"
devHost = "XXXX"
stgHost = "XXXX"
prxHost = "XXXX"
prdHost = "XXXX"

p80     = "80"
p8080   = "8080"
p8082   = "8082"
p2020   = "2020"
p9000   = "9000" # for localhost, see /etc/init.d/4store.conf

locMap  = SPARQL("http://%s:%s/sparql/" % (locHost, p9000), api_key=userID)

dev     = SPARQL("http://%s:%s/sparql/" % (devHost, p8080), api_key=userID)
devMap  = SPARQL("http://%s:%s/sparql/" % (devHost, p2020), api_key=userID)

stg     = SPARQL("http://%s:%s/sparql/" % (stgHost, p8080), api_key=userID)
stgMap  = SPARQL("http://%s:%s/sparql/" % (stgHost, p8082), api_key=userID)

prx     = SPARQL("http://%s:%s/sparql/" % (prxHost, p80  ), api_key=userID)

#USE CAREFULLY !!!!!!!!!!!!
#prd     = SPARQL("http://%s:%s/sparql/" % (prdHost, p8080), api_key=userID)
#prdMap  = SPARQL("http://%s:%s/sparql/" % (prdHost, p8082), api_key=userID)

def timeit(method):
    def timed(*args, **kw):
        ts = time.time()
        result = method(*args, **kw)
        te = time.time()
        print '%r (%r, %r) %2.2f sec' % \
              (method.__name__, args, kw, te-ts)
        return result
    return timed

def sol2dict(sol):
    d=dict()
    for v in sol:
        if "value" in sol[v]:
            d[v]=sol[v]["value"]
        else:
            d[v]=None
    return d

def parse_json_result(res):
    j=json.loads(res)
    sols = []
    for sol in j["results"]["bindings"]:
        sols.append(sol2dict(sol))
    return sols

def query(q,epr,f='application/json',api_key=None):
    try:
        params = {'query': q}
        if api_key:
            #print "submitting apikey with query", api_key
            params["apikey"]=api_key
        else:
            params["apikey"]=API_KEY_ADMIN
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

#----------------------------------------------------------------
# Mapping queries

mapPrefixRDFS = "PREFIX mapRDFS: <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>"

getLoomIDs = mapPrefixRDFS + """
SELECT ?mapID
FROM <http://purl.bioontology.org/mapping/loom>
WHERE { ?mapID a mapRDFS:One_To_One_Mapping . }
"""

countLoomIDs = mapPrefixRDFS + """
SELECT (count(?mapID) as ?countLoomIDs)
WHERE {
    GRAPH <http://purl.bioontology.org/mapping/loom>
    { ?mapID a mapRDFS:One_To_One_Mapping . }
}
"""

countBadIDs = mapPrefixRDFS + """
SELECT (count(?mapID) as ?countBadIDs)
WHERE {
    GRAPH <http://purl.bioontology.org/mapping/tmpBad>
    { ?mapID a mapRDFS:One_To_One_Mapping . }
}
"""

# This query returns all the triples with ?mapId as an object in the 
# {graph}, which should be only triples with this pattern:
#
# ?s = <http://purl.bioontology.org/mapping/mappings.rdfs#One_To_One_Mapping> 
# ?p = <http://purl.bioontology.org/mapping/mappings.rdfs#id>

loomBadMappings = mapPrefixRDFS + """
SELECT  ?mapID ?p ?o
WHERE {
    GRAPH <http://purl.bioontology.org/mapping/loom>
    { ?mapID ?p ?o . }
    GRAPH <http://purl.bioontology.org/mapping/tmpBad>
    { ?mapID a mapRDFS:One_To_One_Mapping . }
}
"""


