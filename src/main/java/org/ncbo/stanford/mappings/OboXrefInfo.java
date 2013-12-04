/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * Mappings between terms related by an OBO xref.
 * 
 * name: obo_xref
 * 
 * graph: <http://purl.bioontology.org/mapping/obo_xref>
 * 
 * relation: <http://www.w3.org/2004/02/skos/core#relatedMatch>
 * 
 * @author dlweber
 * 
 */
final class OboXrefInfo extends MappingInfo {

	public OboXrefInfo() {
		super();
		// Use the super() defaults for:
		// mapDate = MappingUtils.xmlDateToday();
		// mappingSourceSite =
		// "<http://www.bioontology.org/wiki/index.php/BioPortal_Mappings>";
		// The bioportal user:
		// apiKey = "default-user-api-key";
		// submittedBy = "default-user-id";

		mapGraphName = "obo_xref";
		mapGraphURI = mapGraphNS + mapGraphName;
		mapRelation = "http://www.w3.org/2004/02/skos/core#relatedMatch";

		// mapComment = "OBO xref mappings.";
		mappingType = "Manual";
		mappingSource = "Organization";
		mappingSourceName = "OBO xref";
		mappingSourceContactInfo = "obo-relations@lists.sourceforge.net";
		mappingSourceAlgorithm = "Mappings between ontology terms related by an OBO xref.";
	}
}

