
KB=mappings_reif
REST_GRAPH=http://purl.bioontology.org/mapping/rest
PROVISIONAL_GRAPH=http://purl.bioontology.org/ontology/provisional
LOOM_GRAPH=http://purl.bioontology.org/mapping/loom
CUI_GRAPH=http://purl.bioontology.org/mapping/umls_cui
URI_GRAPH=http://purl.bioontology.org/mapping/uri_match
LOOM_FOLDER=/srv/ncbo/share/mappings/loom_results_20120426
CUI_FOLDER=/srv/ncbo/share/mappings/umlsCui_results_20120426/
URI_FOLDER=/srv/ncbo/share/mappings/uri_results_20120426/

4s-import -f ntriples -v -a $KB  -m $REST_GRAPH /srv/ncbo/share/mappings/nonloom/non_loom_mappings-000001-reified-integer-fixed.nt
4s-import -f turtle -v -a $KB -m $PROVISIONAL_GRAPH /srv/ncbo/share/mappings/nonloom/provisional_terms.nt
4s-import -f turtle -v -a $KB -m $REST_GRAPH /srv/ncbo/share/mappings/nonloom/extra_mappings.ttl
time find $LOOM_FOLDER -name *.ttl -exec 4s-import -v $KB -a -M $LOOM_GRAPH {} \;
time find $CUI_FOLDER -name *.ttl -exec 4s-import -v $KB -a -M $CUI_GRAPH {} \;
time find $URI_FOLDER -name *.ttl -exec 4s-import -v $KB -a -M $URI_GRAPH {} \;

