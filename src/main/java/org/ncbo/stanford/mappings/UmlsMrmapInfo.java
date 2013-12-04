/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * Mappings between terms from the UMLS MRMAP data.
 * 
 * name: umls_mrmap
 * 
 * graph: <http://purl.bioontology.org/mapping/umls_mrmap>
 * 
 * relation: <http://www.w3.org/2004/02/skos/core#closeMatch>
 * 
 * @author dlweber
 */
final class UmlsMrmapInfo extends MappingInfo {

	public UmlsMrmapInfo() {
		super();
		// Use the super() defaults for:
		// mapDate = MappingUtils.xmlDateToday();
		// mappingSourceSite =
		// "<http://www.bioontology.org/wiki/index.php/BioPortal_Mappings>";
		// Link to the UMLS site from the wiki:
		// mappingSourceSite = "<http://www.nlm.nih.gov/research/umls/>";

		mapGraphName = "umls_mrmap";
		mapGraphURI = mapGraphNS + mapGraphName;
		mapRelation = "http://www.w3.org/2004/02/skos/core#closeMatch";
		// The default mapRelation can be replaced in UmlsMrmapMapping objects
		// by calls to UmlsMrmapMapping.setMapRelation(String).

		// mapComment
		mappingType = "Manual";
		mappingSource = "Organization";
		mappingSourceName = "NLM UMLS (MRMAP)";
		mappingSourceContactInfo = "admin@bioontology.org"; // NLM-UMLS contact?
		mappingSourceAlgorithm = "Mappings between terms from the UMLS MRMAP data.";
	}
}

