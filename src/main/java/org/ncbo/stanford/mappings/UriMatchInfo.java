/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * Mapping for terms with the same URI from different ontologies.
 * 
 * name: uri_match
 * 
 * graph: <http://purl.bioontology.org/mapping/uri_match>
 * 
 * relation: <http://www.w3.org/2004/02/skos/core#exactMatch>
 * 
 * @author dlweber
 * 
 */
final class UriMatchInfo extends MappingInfo {

	public UriMatchInfo() {
		super();
		// Use the super() defaults for:
		// mapDate = MappingUtils.xmlDateToday();
		// mappingSourceSite =
		// "<http://www.bioontology.org/wiki/index.php/BioPortal_Mappings>";

		// Note: prior version of loom had user ID: 38342 and 38198.
		// See http://www.bioontology.org/wiki/index.php/LOOM
		//
		// A bioportal user:
		// apiKey = "default-user-api-key";
		// submittedBy = "default-user-id";

		mapGraphName = "uri_match";
		mapGraphURI = mapGraphNS + mapGraphName;
		mapRelation = "http://www.w3.org/2004/02/skos/core#exactMatch";

		// mapComment = "Identical URI";
		mappingType = "Automatic";
		mappingSource = "Application";
		mappingSourceName = "NCBO (Identical URI)";
		mappingSourceContactInfo = "admin@bioontology.org";
		mappingSourceAlgorithm = "Mapping for terms with the same URI from different ontologies.";
	}
}
