
Darren Weber
Feb 2012


To convert the mappingsToRemove.sql into SPARQL, run the python script
mappingsToRemoveAsSPARQL.py; this should be required only if the
mappingsToRemove.ru file is older than the mappingsToRemove.sql file.  Run it as
follows:

./mappingsToRemoveAsSPARQL.py > mappingsToRemove.ru


The python script resolves the term ID strings in the .sql into fullId strings
that can be used as term URI literals in the SPARQL .ru file.

To apply the mappingsToRemove.ru SPARQL update on the loom data, run the script
in runLoomUpdate4store.bash.  It will use a temporary 4store KB to process the
loom data.

To remove bad mappings from the LOOM data, we are using a 4store KB with
permissions for SPARQL 1.1 update queries.

The loom KB has HTTP services at:
http://localhost:2020/status/
http://localhost:2020/test/
http://localhost:2020/sparql/
http://localhost:2020/data/
http://localhost:2020/update/

curl command for uploaded turtle rdf data ....

curl -T FILE -H 'Content-Type: application/x-turtle'
http://localhost:2020/data/GRAPH_ID

