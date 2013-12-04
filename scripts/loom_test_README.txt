
There is no query of the triple store when testing.  The test terms are in:
loom_terms_test.txt

Those terms are sorted and processed for mappings using this command:
./runMapping.bash -p loom -t

The stats generated for that test should include 16 unique mappings. See the
comments in loom_terms_test.txt for details.

The example mappings for testing the removal of bad mappings are in:
loom_terms_test_mappings_001.ttl
loom_terms_test_mappings_002.ttl

The SPARQL for tracking bad mappings to be removed is in:
loom_terms_test_mappingsRemove.ru

That will populate a bad mapping graph that is used to
generate all the triples to be removed from the loom graph.

