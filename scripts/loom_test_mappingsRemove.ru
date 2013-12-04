
PREFIX mapRDFS: <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>
PREFIX xmls: <http://www.w3.org/2001/XMLSchema#>
PREFIX loom: <http://purl.bioontology.org/mapping/loom>
PREFIX loomBad: <http://purl.bioontology.org/mapping/loomBad>

# -----------------------------------------------------------------------
# Remove some mappings on units of measurement between
#PREFIX HL7: <http://purl.bioontology.org/ontology/HL7>
#PREFIX nciThesaurus: <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl>

INSERT 
{
    GRAPH <http://purl.bioontology.org/mapping/loomBad>
    {
	?mapID a mapRDFS:One_To_One_Mapping .
    }
}
WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
	?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37671> ;
            mapRDFS:target ?dstURI .
            FILTER ( ?dstURI != <http://purl.bioontology.org/ontology/ontology/CSP/1557_3663> )
        # Should match 3 targets in loom_testMappings.ttl
    }
};
INSERT 
{
    GRAPH <http://purl.bioontology.org/mapping/loomBad>
    {
	?mapID a mapRDFS:One_To_One_Mapping .
    }
}
WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
	?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37671> ;
            mapRDFS:source ?srcURI .
            FILTER ( ?srcURI != <http://purl.bioontology.org/ontology/ontology/CSP/1557_3663> )

    }
};

INSERT 
{
    GRAPH <http://purl.bioontology.org/mapping/loomBad>
    {
	?mapID a mapRDFS:One_To_One_Mapping .
    }
}
WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
	?mapID a mapRDFS:One_To_One_Mapping ;
		mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Zyxin> ;
		mapRDFS:target ?dstURI .
		FILTER ( ?dstURI != <http://purl.bioontology.org/ontology/ontology/OMIM/602002> )
        # Should match 1 target in loom_testMappings.ttl
    }
};
INSERT 
{
    GRAPH <http://purl.bioontology.org/mapping/loomBad>
    {
	?mapID a mapRDFS:One_To_One_Mapping .
    }
}
WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
	?mapID a mapRDFS:One_To_One_Mapping ;
		mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Zyxin> ;
		mapRDFS:source ?srcURI .
		FILTER ( ?srcURI != <http://purl.bioontology.org/ontology/ontology/OMIM/602002> )
    }
};

