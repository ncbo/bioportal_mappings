
PREFIX mapRDFS: <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>
PREFIX xmls: <http://www.w3.org/2001/XMLSchema#>

PREFIX mapping: <http://purl.bioontology.org/mapping/>

SELECT ?badMapID
WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
        ?badMapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HOM-DATASOURCE_OSHPD/OSHPD_000000race> ;
            mapRDFS:target ?dstURI .
        FILTER ( ?dstURI != <http://purl.bioontology.org/ontology/HOM-DATASRC-ORTHO/ORTHOSRC_SPINESURG_000000race> )
    }
}

