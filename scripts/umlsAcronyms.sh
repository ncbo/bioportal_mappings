#!/bin/bash

umlsFile="umlsAcronyms.txt"

curl -s -o $umlsFile https://raw.github.com/ncbo/umls2rdf/master/umls.conf

# Remove all the comments and additional information required for umls2rdf.py
sed -i -e "s/^#[ ]*//" $umlsFile

# Convert the list of acronyms into a long string that can be used in
# the Mapping.properties file.
cat umlsAcronyms.txt | ./umlsAcronyms.pl

