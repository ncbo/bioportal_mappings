
PREFIX mapRDFS: <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>
PREFIX xmls: <http://www.w3.org/2001/XMLSchema#>

PREFIX mapping: <http://purl.bioontology.org/mapping>

SELECT ?mapID WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0439472> ;
            mapRDFS:target ?dstURI .
            FILTER ( ?dstURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pound_per_Square_Inch> )
    }
}
DELETE WHERE
{
    ?mapID ?p ?o .
};

DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0439472> ;
            mapRDFS:target ?dstURI .
            FILTER ( ?dstURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pound_per_Square_Inch> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0439472> ;
            mapRDFS:source ?srcURI .
            FILTER ( ?srcURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pound_per_Square_Inch> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552915> ;
            mapRDFS:target ?dstURI .
            FILTER ( ?dstURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Rod_US> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552915> ;
            mapRDFS:source ?srcURI .
            FILTER ( ?srcURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Rod_US> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551058> ;
            mapRDFS:target ?dstURI .
            FILTER ( ?dstURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Are> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551058> ;
            mapRDFS:source ?srcURI .
            FILTER ( ?srcURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Are> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target ?dstURI .
            FILTER ( ?dstURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gal> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source ?srcURI .
            FILTER ( ?srcURI != <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gal> )

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer .

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551065> .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551065> .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553005> .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553005> .

    }
};
DELETE WHERE
{
    GRAPH <http://purl.bioontology.org/mapping/loom>
    {
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/BTO_0000351> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1005"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/BTO_0000351> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1005"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/BTO_0000351> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1005"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/BTO_0000351> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1005"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553580> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_28659> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_28659> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553580> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552130> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_26833> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_26833> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552130> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553628> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37971> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37971> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553628> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37972> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37972> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552146> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37979> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37979> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552146> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_28496> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_28496> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_28843> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_28843> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37690> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37690> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37690> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37690> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_37690> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_37690> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_10545> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_10545> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_167099> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_167099> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_167099> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_167099> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_29320> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_29320> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_28260> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_28260> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_31344> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_31344> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_51486> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_51486> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0444185> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_53284> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_53284> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0444185> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1692345> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CHEBI_15414> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1007"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CHEBI_15414> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1692345> ;
            mapRDFS:source_ontology_id "1007"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/DDANAT_0000110> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1008"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/DDANAT_0000110> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1008"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/DOID_2985> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1009"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/DOID_2985> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1009"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/DOID_12128> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1009"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/DOID_12128> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1009"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552175> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001458> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001458> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552175> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552176> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001461> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001461> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552176> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552177> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001465> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001465> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552177> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552191> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001466> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001466> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552191> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552192> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001469> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001469> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552192> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552194> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001472> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001472> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552194> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552195> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001475> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001475> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552195> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552203> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001479> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001479> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552203> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552206> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001482> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001482> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552206> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552113> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001547> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001547> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552113> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00001635> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00001635> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00004356> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00004356> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBbt_00003761> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1015"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBbt_00003761> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1015"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MAO_0000121> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1026"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MAO_0000121> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1026"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000184> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000184> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000975> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000975> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001260> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001260> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001265> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001265> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000178> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000178> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001090> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001090> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0006935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000683> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000683> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0006935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000845> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000845> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000672> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000672> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000845> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000845> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000673> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000673> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000687> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000687> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000691> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000691> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000695> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000695> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000169> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000934> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000934> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000934> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000934> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001069> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001069> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001069> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001069> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001246> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001246> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0001246> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0001246> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000132> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000132> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000013> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000013> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000694> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000694> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000013> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000013> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TGMA_0000694> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1030"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TGMA_0000694> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1030"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acid_Citrate_Dextrose> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acid_Citrate_Dextrose> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Advisory_Committee_to_the_NCI_Director> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Advisory_Committee_to_the_NCI_Director> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cyclophosphamide_Doxorubicin_Tamoxifen> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cyclophosphamide_Doxorubicin_Tamoxifen> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561511> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561507> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Control> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561507> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561507> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Active_Study> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561507> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acyclovir> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acyclovir> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22624_A> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Ductal_Mouse_MIN> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Ductal_Mouse_MIN> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22624_A> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acute_Lymphoblastic_Leukemia> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acute_Lymphoblastic_Leukemia> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_Protein> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_Protein> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acute_Lymphoblastic_Leukemia> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acute_Lymphoblastic_Leukemia> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_Protein> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_Protein> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acute_Lymphoblastic_Leukemia> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Acute_Lymphoblastic_Leukemia> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_Protein> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_Protein> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCR_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550557> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Andorra> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Andorra> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550557> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555334> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#As_Necessary> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#As_Necessary> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555334> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555334> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#As_Necessary> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#As_Necessary> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555334> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Atypical_Small_Acinar_Proliferation_of_the_Prostate_Gland> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Atypical_Small_Acinar_Proliferation_of_the_Prostate_Gland> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bag_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bag_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bag_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bag_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bag_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bag_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ADRB2_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ADRB2_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bar_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bar_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bar_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bar_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Beta-2_Adrenergic_Receptor> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Beta-2_Adrenergic_Receptor> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Dental_Base> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Dental_Base> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Nucleotides> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Nucleotides> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCG_Vaccine> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BCG_Vaccine> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bacillus_Calmette-Guerin_Antigen> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bacillus_Calmette-Guerin_Antigen> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BH3_Interacting_Domain_Death_Agonist_Protein> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BH3_Interacting_Domain_Death_Agonist_Protein> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BID_Gene> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#BID_Gene> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Twice_Daily> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Twice_Daily> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PTPNS1_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PTPNS1_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Tyrosine_Phosphatase_SHP_Substrate-1> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Tyrosine_Phosphatase_SHP_Substrate-1> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PTPNS1_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PTPNS1_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Tyrosine_Phosphatase_SHP_Substrate-1> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Tyrosine_Phosphatase_SHP_Substrate-1> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1579850> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Box_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Box_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1579850> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552831> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Box_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Box_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552831> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552509> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bus_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Bus_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552509> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552509> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Busulfan> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Busulfan> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552509> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Can_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Can_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Canada> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Canada> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Chronic_Allograft_Nephropathy> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Chronic_Allograft_Nephropathy> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#NUP214_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#NUP214_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Nucleoporin-214kDa> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Nucleoporin-214kDa> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556079> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Canister_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Canister_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556079> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550622> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cannula_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cannula_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550622> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551436> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Canoncito_Dine> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Canoncito_Dine> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551436> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0304292> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Caplet_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Caplet_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0304292> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556145> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#TFAP2B_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#TFAP2B_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556145> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Colombia> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Colombia> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Lobular_Cancerization> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Lobular_Cancerization> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Device_Cord> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Device_Cord> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Device_Cord> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Device_Cord> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cup_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cup_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cup_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cup_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0700071> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Curettage_Procedure> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Curettage_Procedure> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0700071> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/18568_x-DHG> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Sioux> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Sioux> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/18568_x-DHG> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551611> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Dakota> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Dakota> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551611> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Shape> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Shape> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Discontinued> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Discontinued> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Shape> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Shape> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Shape> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disc_Shape> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Disk_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Apothecaries_Dram_Mass_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Apothecaries_Dram_Mass_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Dram_Mass_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Dram_Mass_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552959> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Apothecaries_Dram_Mass_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Apothecaries_Dram_Mass_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552959> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556026> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Driver_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Driver_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556026> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drop_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drop_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drop_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drop_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drops> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drops> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Medical_Drop> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Medical_Drop> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1321095> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0991568> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drop_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Drop_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0991568> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0991568> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Medical_Drop> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Medical_Drop> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0991568> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0012559> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Developmental_Therapeutics_Program> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Developmental_Therapeutics_Program> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0012559> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551863> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#EPHA8_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#EPHA8_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551863> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Oocyte> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Oocyte> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Egg_Poultry> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Egg_Poultry> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ENG_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ENG_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Endoglin> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Endoglin> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ERG_Gene> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ERG_Gene> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ERG_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#ERG_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Transforming_Protein-ERG> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Transforming_Protein-ERG> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Foot_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Foot> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gallon_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gallon_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gallon_US> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gallon_US> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gas_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gas_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Electrophoresis_Gel> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Electrophoresis_Gel> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gel_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gel_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Electrophoresis_Gel> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Electrophoresis_Gel> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gel_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gel_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0017243> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gene_Object> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Gene_Object> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/18382_x-HAA> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#LobuloAlveolar_Mouse_MIN> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#LobuloAlveolar_Mouse_MIN> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/18382_x-HAA> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552914> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Hand_Unit_of_Length> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Hand_Unit_of_Length> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552914> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550747> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Classification_of_Diseases> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#International_Classification_of_Diseases> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550747> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553183> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Inductively-Coupled_Plasma_Mass_Spectrometry> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Inductively-Coupled_Plasma_Mass_Spectrometry> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553183> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Calcium_Oxide> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Calcium_Oxide> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Lime_Flavor> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Lime_Flavor> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Line_Unit_of_Length> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Line_Unit_of_Length> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Line_Unit_of_Length> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Line_Unit_of_Length> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Line_Unit_of_Length> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Line_Unit_of_Length> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553412> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Long_Interspersed_Element> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553412> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0023742> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Liniment_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Liniment_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0023742> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Milli-Inch> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Milli-Inch> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#RAF1_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#RAF1_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mil> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mil> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Milli-Inch> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Milli-Inch> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#RAF1_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#RAF1_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mil> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mil> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Mile_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Mile_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mile> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mile> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Mile_British> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Mile_British> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mile> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Survey_Mile> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0331865> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Mismatch_Repair> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Mismatch_Repair> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Myanmar> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Myanmar> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cisplatin_Cyclophosphamide_Doxorubicin_Etoposide> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cisplatin_Cyclophosphamide_Doxorubicin_Etoposide> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cisplatin_Cyclophosphamide_Doxorubicin_Vindesine> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cisplatin_Cyclophosphamide_Doxorubicin_Vindesine> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cyclophosphamide_Doxorubicin_Etoposide_Prednisone> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Cyclophosphamide_Doxorubicin_Etoposide_Prednisone> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pace_Unit_of_Measure> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pace_Unit_of_Measure> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/18199_x-EMS> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Aleut> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Aleut> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/18199_x-EMS> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553449> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Package> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Package> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553449> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553449> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Package_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Package_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553449> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553452> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Packet_Dosing_Unit> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Packet_Dosing_Unit> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553452> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PAD_Mouse> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PAD_Mouse> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pad_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pad_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pad_Dosage_Form> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pad_Dosage_Form> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Peripheral_Arterial_Disease> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Peripheral_Arterial_Disease> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Plasminogen_Activator_Inhibitor-1> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Plasminogen_Activator_Inhibitor-1> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Plasminogen_Activator_Inhibitor-2> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Plasminogen_Activator_Inhibitor-2> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SERPINE1_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SERPINE1_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555266> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#N-Phosphonacetyl-L-aspartate> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#N-Phosphonacetyl-L-aspartate> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555266> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Apoptosis> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Apoptosis> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550743> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Patient-Centered_Medicine> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Patient-Centered_Medicine> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550743> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Complete_Remission> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Complete_Remission> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Polymerase_Chain_Reaction> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Polymerase_Chain_Reaction> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Lomustine_Procarbazine_Vincristine> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Lomustine_Procarbazine_Vincristine> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PLAB_wt_Allele> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#PLAB_wt_Allele> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Placental_TGF-Beta> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Placental_TGF-Beta> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Portable_Document_Format> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Portable_Document_Format> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Posterior_Inferior_Cerebellar_Artery> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Posterior_Inferior_Cerebellar_Artery> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Point_Name> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Point_Name> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pump_Device_Component> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Pump_Device_Component> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1704326> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Role_Entity> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Role_Entity> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1704326> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1704326> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Security_Role_Object> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Security_Role_Object> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1704326> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SEA_Mouse> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SEA_Mouse> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Staphylococcal_Enterotoxin_A> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Staphylococcal_Enterotoxin_A> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Second_Unit_of_Plane_Angle> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Second_Unit_of_Plane_Angle> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Second_Unit_of_Plane_Angle> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Second_Unit_of_Plane_Angle> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Square_Mile> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Square_Mile> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Square_Mile> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Square_Mile> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Phosphatase-2A_Inhibitor-I2PP2A> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Phosphatase-2A_Inhibitor-I2PP2A> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SET_Gene> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SET_Gene> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Phosphatase-2A_Inhibitor-I2PP2A> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Phosphatase-2A_Inhibitor-I2PP2A> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SET_Gene> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#SET_Gene> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Completion_Status> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Completion_Status> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Immediately> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Immediately> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:target <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Signal_Transducer_and_Activator_of_Transcription> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1032"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#Signal_Transducer_and_Activator_of_Transcription> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:source_ontology_id "1032"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/EO_0007613> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1036"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/EO_0007613> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:source_ontology_id "1036"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MI_0236> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1040"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MI_0236> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:source_ontology_id "1040"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MI_0301> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1040"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MI_0301> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:source_ontology_id "1040"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MOD_00728> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1041"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MOD_00728> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1041"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555052> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0005045> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0005045> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555052> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0007059> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0007059> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0006912> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0006912> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0006912> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0006912> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008043> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008043> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008043> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008043> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008044> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008044> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008044> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008044> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008045> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008045> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008045> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008045> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008046> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008046> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008046> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008046> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008047> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008047> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008047> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008047> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008048> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008048> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008048> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008048> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008049> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008049> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008049> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008049> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008050> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008050> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008050> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008050> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008051> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008051> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008051> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008051> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008052> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008052> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/WBbt_0008052> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1048"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/WBbt_0008052> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1048"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0000423> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0000423> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0001109> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0001109> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0000340> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0000340> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0000033> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0000033> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0000477> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0000477> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0001053> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0001053> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1704326> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ZFA_0001698> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1051"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ZFA_0001698> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1704326> ;
            mapRDFS:source_ontology_id "1051"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:target <http://sig.uw.edu/fma#Structural_gene> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1053"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://sig.uw.edu/fma#Structural_gene> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:source_ontology_id "1053"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:target <http://sig.uw.edu/fma#Portion_of_extracellular_matrix> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1053"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://sig.uw.edu/fma#Portion_of_extracellular_matrix> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:source_ontology_id "1053"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553467> ;
            mapRDFS:target <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID28682> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1057"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID28682> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553467> ;
            mapRDFS:source_ontology_id "1057"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID779> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1057"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID779> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1057"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:target <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID5998> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1057"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID5998> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:source_ontology_id "1057"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:target <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID5998> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1057"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://bioontology.org/projects/ontologies/radlex/radlexOwlDlComponent#RID5998> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:source_ontology_id "1057"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553642> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000002396> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000002396> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553642> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552124> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000002397> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000002397> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552124> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000003621> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000003621> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000005467> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000005467> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022049> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022049> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000005467> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000005467> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022049> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022049> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560271> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007515> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007515> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000014683> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000014683> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000023516> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000023516> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022063> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022063> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561448> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022115> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022115> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561448> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000010150> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000010150> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000004732> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000004732> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000011396> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000011396> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000009685> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000009685> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000002994> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000002994> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022207> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022207> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000002183> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000002183> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000001968> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000001968> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000001968> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000001968> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000011515> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000011515> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550626> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022388> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022388> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550626> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000006686> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000006686> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551863> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007128> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007128> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551863> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000001345> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000001345> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1561490> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000000791> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000000791> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007173> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007173> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007806> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007806> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007889> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007889> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007856> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007856> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1948036> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000004262> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000004262> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1948036> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1948036> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022873> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022873> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1948036> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550747> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022989> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022989> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550747> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000009815> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000009815> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000002972> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000002972> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0444077> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000001896> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000001896> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0444077> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000003137> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000003137> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022589> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022589> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000014702> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000014702> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1698947> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000012333> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000012333> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550743> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000023499> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000023499> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550743> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000007920> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000007920> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000012489> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000012489> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000022424> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000022424> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000006486> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000006486> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000014256> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000014256> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000014717> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000014717> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000014717> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000014717> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000015301> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000015301> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000023675> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000023675> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22914_SONC> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000015406> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000015406> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22914_SONC> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PR_000015389> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1062"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PR_000015389> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0205548> ;
            mapRDFS:source_ontology_id "1062"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBsp_00001687> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1064"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBsp_00001687> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1064"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1697246> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBsp_00001860> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1064"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBsp_00001860> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1697246> ;
            mapRDFS:source_ontology_id "1064"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1692345> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FBsp_00000023> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1064"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FBsp_00000023> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1692345> ;
            mapRDFS:source_ontology_id "1064"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000285> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000285> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000306> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000306> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000420> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000420> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553013> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000077> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000077> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553013> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000084> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000084> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552844> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1547276> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000077> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000077> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1547276> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000167> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000167> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000167> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000167> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000305> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000305> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000305> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000305> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552961> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/ENVO_00000015> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1069"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/ENVO_00000015> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:source_ontology_id "1069"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GO_0031264> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1070"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GO_0031264> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1070"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GO_0034005> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1070"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GO_0034005> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1070"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GO_0006298> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1070"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GO_0006298> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0065828> ;
            mapRDFS:source_ontology_id "1070"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GO_0004276> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1070"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GO_0004276> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1070"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GO_0004235> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1070"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GO_0004235> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1070"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/BSPO_0000400> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1078"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/BSPO_0000400> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1078"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/BSPO_0000400> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1078"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/BSPO_0000400> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552924> ;
            mapRDFS:source_ontology_id "1078"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552831> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TTO_100810> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1081"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TTO_100810> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552831> ;
            mapRDFS:source_ontology_id "1081"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1579850> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TTO_100810> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1081"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TTO_100810> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1579850> ;
            mapRDFS:source_ontology_id "1081"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551442> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TTO_101949> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1081"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TTO_101949> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551442> ;
            mapRDFS:source_ontology_id "1081"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551442> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TTO_101949> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1081"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TTO_101949> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551442> ;
            mapRDFS:source_ontology_id "1081"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/npo#NPO_307> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1083"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/npo#NPO_307> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1083"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/npo#NPO_307> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1083"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/npo#NPO_307> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993608> ;
            mapRDFS:source_ontology_id "1083"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:target <http://ontology.neuinfo.org/NIF/DigitalEntities/NIF-Investigation.owl#birnlex_2127> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1084"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ontology.neuinfo.org/NIF/DigitalEntities/NIF-Investigation.owl#birnlex_2127> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:source_ontology_id "1084"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22725_DATA> ;
            mapRDFS:target <http://ontology.neuinfo.org/NIF/DigitalEntities/NIF-Resource.owl#nlx_res_20090102> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1084"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://ontology.neuinfo.org/NIF/DigitalEntities/NIF-Resource.owl#nlx_res_20090102> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22725_DATA> ;
            mapRDFS:source_ontology_id "1084"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:target <http://bioontology.org/projects/ontologies/birnlex#birnlex_2127> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1089"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://bioontology.org/projects/ontologies/birnlex#birnlex_2127> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:source_ontology_id "1089"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/XAO_0000120> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1095"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/XAO_0000120> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1095"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/XAO_0000120> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1095"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/XAO_0000120> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1095"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/XAO_0000448> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1095"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/XAO_0000448> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1095"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/XAO_0000448> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1095"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/XAO_0000448> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1095"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.org/obo/owl/PATO#PATO_0001737> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1105"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.org/obo/owl/PATO#PATO_0001737> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1105"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/PATO_0001737> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1107"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/PATO_0001737> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1107"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/SO_0000194> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1109"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/SO_0000194> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1109"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/SO_0000194> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1109"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/SO_0000194> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:source_ontology_id "1109"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/SO_0000194> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1109"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/SO_0000194> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1109"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TAO_0000423> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1110"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TAO_0000423> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1110"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TAO_0001109> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1110"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TAO_0001109> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:source_ontology_id "1110"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TAO_0000033> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1110"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TAO_0000033> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:source_ontology_id "1110"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TAO_0000477> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1110"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TAO_0000477> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1110"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/TAO_0001053> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1110"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/TAO_0001053> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1110"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.org/obo/owl/PATO#PATO_0001737> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1112"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.org/obo/owl/PATO#PATO_0001737> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1112"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_1> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_1> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_1> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_1> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_1> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_1> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22942_AR> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_23204> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_23204> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22942_AR> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_33892> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_33892> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_322741> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_322741> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552649> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_159033> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_159033> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_28355> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_28355> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/NCBITaxon_46221> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1132"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/NCBITaxon_46221> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1132"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1152"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1152"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1152"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1152"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1152"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1152"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1152"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/MAT_0000091> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1152"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/DOID_2985> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1245"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/DOID_2985> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1245"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FMA_74402> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1245"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FMA_74402> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:source_ontology_id "1245"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/FMA_9672> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1245"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/FMA_9672> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550746> ;
            mapRDFS:source_ontology_id "1245"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/DOID_12128> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1245"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/DOID_12128> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1245"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/IDOMAL_0000275> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1311"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/IDOMAL_0000275> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1311"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/CST/NEUROSIS> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1341"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/CST/NEUROSIS> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552962> ;
            mapRDFS:source_ontology_id "1341"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22624_A> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MEDLINEPLUS/T152> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1347"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MEDLINEPLUS/T152> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22624_A> ;
            mapRDFS:source_ontology_id "1347"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MEDLINEPLUS/T4083> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1347"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MEDLINEPLUS/T4083> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1347"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/607541> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/607541> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/609377> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/609377> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/10712_ACD> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/107280> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/107280> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/602586> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/602586> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/605126> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/605126> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/117360> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/117360> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/601676> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/601676> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/604893> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/604893> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552506> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/610070> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/610070> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/109690> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/109690> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/603826> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/603826> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0993613> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/607627> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/607627> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550601> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/601997> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/601997> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0585361> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/114350> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/114350> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553460> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556145> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/169100> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/169100> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556145> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/120970> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/120970> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/120970> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/120970> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552938> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/610776> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/610776> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552951> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551863> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/176945> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/176945> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551863> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/165080> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/165080> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551083> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/137035> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/137035> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0560013> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/137250> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/137250> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550747> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/252500> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/252500> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550747> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/609809> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/609809> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551738> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0444077> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/605554> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/605554> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0444077> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/136950> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/136950> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/605347> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/605347> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0182158> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/212790> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/212790> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/244400> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/244400> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550744> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/605312> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/605312> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1554990> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552834> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/129400> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/129400> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552834> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552834> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/266265> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/266265> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552834> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/180535> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/180535> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/607862> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/607862> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1548473> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/165110> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/165110> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/600960> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/600960> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/600960> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/600960> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/182290> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/182290> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/300105> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/300105> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22727_SMS> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22914_SONC> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/OMIM/182465> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1348"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/OMIM/182465> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22914_SONC> ;
            mapRDFS:source_ontology_id "1348"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000039554> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000039554> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553631> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1549040> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000039131> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000039131> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1549040> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000039340> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000039340> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551336> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000039134> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000039134> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000043423> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000043423> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000043423> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000043423> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000043423> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000043423> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552837> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552509> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000041947> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000041947> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552509> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000040456> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000040456> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552944> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000040351> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000040351> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000040928> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000040928> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555266> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000039547> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000039547> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555266> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000042771> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000042771> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000039593> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000039593> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/PDQ/CDR0000042927> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1349"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/PDQ/CDR0000042927> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552508> ;
            mapRDFS:source_ontology_id "1349"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/LNC/LP37180-4> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1350"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/LNC/LP37180-4> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1350"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/LNC/MTHU024661> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1350"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/LNC/MTHU024661> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1350"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/LNC/LP37180-4> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1350"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/LNC/LP37180-4> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1350"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/LNC/MTHU024661> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1350"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/LNC/MTHU024661> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1350"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/LNC/LP37180-4> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1350"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/LNC/LP37180-4> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1350"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/LNC/MTHU024661> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1350"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/LNC/MTHU024661> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552653> ;
            mapRDFS:source_ontology_id "1350"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553613> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C022572> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C022572> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553613> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D009163> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D009163> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0004886> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551707> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D012377> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D012377> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551707> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C042097> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C042097> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C042097> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C042097> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553019> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550622> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D002404> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D002404> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550622> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556145> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D014337> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D014337> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556145> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1551720> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D020307> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D020307> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1551720> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D010063> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D010063> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1697741> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D005880> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D005880> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D005880> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D005880> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552935> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550649> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D002408> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D002408> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550649> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C048042> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C048042> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C048042> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C048042> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552926> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0444077> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D009262> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D009262> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0444077> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555266> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C013195> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C013195> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555266> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D016133> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D016133> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22645_PCR> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0444185> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D013492> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D013492> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0444185> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/Q000556> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/Q000556> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/Q000556> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/Q000556> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0457385> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D012718> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D012718> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D012718> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D012718> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552685> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22914_SONC> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/D009679> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/D009679> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22914_SONC> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550721> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C013842> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C013842> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550721> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550721> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MSH/C013842> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1351"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MSH/C013842> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550721> ;
            mapRDFS:source_ontology_id "1351"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/NDFRT/C242394> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1352"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/NDFRT/C242394> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/22651_GENE> ;
            mapRDFS:source_ontology_id "1352"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0444185> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/NDFRT/C5902> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1352"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/NDFRT/C5902> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0444185> ;
            mapRDFS:source_ontology_id "1352"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/HAO_0000008> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1362"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/HAO_0000008> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1362"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/HAO_0000008> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1362"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/HAO_0000008> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552960> ;
            mapRDFS:source_ontology_id "1362"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/HAO_0000008> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1362"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/HAO_0000008> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556143> ;
            mapRDFS:source_ontology_id "1362"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0006823> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GAZ_00058515> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1397"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GAZ_00058515> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0006823> ;
            mapRDFS:source_ontology_id "1397"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0006823> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GAZ_00058515> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1397"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GAZ_00058515> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0006823> ;
            mapRDFS:source_ontology_id "1397"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556026> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/GAZ_00200122> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1397"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/GAZ_00200122> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556026> ;
            mapRDFS:source_ontology_id "1397"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/UBERON_0003087> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1404"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/UBERON_0003087> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550742> ;
            mapRDFS:source_ontology_id "1404"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1404"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1404"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1404"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1404"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1404"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1404"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1404"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/UBERON_0002470> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C0347981> ;
            mapRDFS:source_ontology_id "1404"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/UBERON_0002065> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1404"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/UBERON_0002065> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1879671> ;
            mapRDFS:source_ontology_id "1404"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1553467> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/MDR/10007541> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1422"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/MDR/10007541> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1553467> ;
            mapRDFS:source_ontology_id "1422"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_G0005022> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_G0005022> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1555328> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_C0001183> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1696131> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0005478> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1550641> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1948036> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_B0006007> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_B0006007> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1948036> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000706> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1552930> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .

        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:target <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:source_ontology_id "1343"^^xmls:integer ;
            mapRDFS:target_ontology_id "1507"^^xmls:integer .
        ?mapID a mapRDFS:One_To_One_Mapping ;
            mapRDFS:source <http://purl.obolibrary.org/obo/CCO_F0000684> ;
            mapRDFS:target <http://purl.bioontology.org/ontology/HL7/C1556080> ;
            mapRDFS:source_ontology_id "1507"^^xmls:integer ;
            mapRDFS:target_ontology_id "1343"^^xmls:integer .


    }
};

