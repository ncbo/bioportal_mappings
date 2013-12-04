/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * Mappings between terms with an identical UMLS CUI from different ontologies.
 * 
 * name: umls_cui
 * 
 * graph: <http://purl.bioontology.org/mapping/umls_cui>
 * 
 * relation: <http://www.w3.org/2004/02/skos/core#closeMatch>
 * 
 * @author dlweber
 */
final class UmlsCuiInfo extends MappingInfo {

	public UmlsCuiInfo() {
		super();
		// Use the super() defaults for:
		// mapDate = MappingUtils.xmlDateToday();
		// mappingSourceSite =
		// "<http://www.bioontology.org/wiki/index.php/BioPortal_Mappings>";
		// Link to the UMLS site from the wiki:
		// mappingSourceSite = "<http://www.nlm.nih.gov/research/umls/>";

		mapGraphName = "umls_cui";
		mapGraphURI = mapGraphNS + mapGraphName;
		mapRelation = "http://www.w3.org/2004/02/skos/core#closeMatch";

		// mapComment = "Identical UMLS CUI";
		mappingType = "Manual";
		mappingSource = "Organization";
		mappingSourceName = "NLM UMLS (CUI)";
		mappingSourceContactInfo = "admin@bioontology.org"; // NLM-UMLS contact?
		mappingSourceAlgorithm = "Mappings between terms from different ontologies that "
				+ "were created automatically, linking terms with the same "
				+ "UMLS concept unique identifier (CUI). The CUIs are "
				+ "assigned to terms in the UMLS by editors at the NLM.";
	}
}

