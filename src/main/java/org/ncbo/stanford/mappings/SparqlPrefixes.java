package org.ncbo.stanford.mappings;

import java.util.Properties;

/**
 * See Mapping.properties for details.
 * 
 * @author dlweber
 * 
 */
public class SparqlPrefixes {

	private static Properties props = MappingProperties.getProps();
	/**
	 * The RDF alias 'mapRDFS:' for the Protege mappings schema:
	 * <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>
	 */
	public static String mapRDFS_NS = props.getProperty("ttl.mapRDFS_NS");

	/**
	 * The RDF URI for the Protege mappings schema:
	 * <http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>
	 */
	public static String mapRDFS_URI = props.getProperty("ttl.mapRDFS_URI");

	/**
	 * The RDF alias 'xsd:' for <http://www.w3.org/2001/XMLSchema#>
	 */
	public static String xsd_NS = props.getProperty("ttl.xsd_NS");
	/**
	 * The RDF URI for <http://www.w3.org/2001/XMLSchema#>
	 */
	public static String xsd_URI = props.getProperty("ttl.xsd_URI");

	/**
	 * mapRDFS:<http://protege.stanford.edu/ontologies/mappings/mappings.rdfs#>
	 * xsd:<http://www.w3.org/2001/XMLSchema#>
	 * 
	 * @return Bioportal RDF prefixes for mapping, in turtle syntax.
	 */
	public static String ttlMappingPrefix() {
		return props.getProperty("ttl.prefix.mapping");
	}

	/**
	 * @return several aliases for bioportal RDF resources. See
	 *         Mapping.properties for details.
	 */
	public static String bioportalSPARQL() {
		return props.getProperty("sparql.prefix.bioportal");
	}

	/**
	 * @return several aliases for common RDF resources. See Mapping.properties
	 *         for details.
	 */
	public static String standardSPARQL() {
		return props.getProperty("sparql.prefix.standard");
	}

}
