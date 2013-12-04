#!/usr/bin/env python

import sys
import urllib

if len(sys.argv) < 2:
    print "Usage: " + sys.argv[0] + " <sparqlUpdateFile>"
    sys.exit(1)

fileName=sys.argv[1]
f=open(fileName, 'r')
for line in f:
    print urllib.quote_plus(line)

