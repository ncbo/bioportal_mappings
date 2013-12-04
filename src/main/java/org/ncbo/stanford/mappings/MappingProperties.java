package org.ncbo.stanford.mappings;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * @author dlweber
 * 
 */
public class MappingProperties {

	private static Logger log = LogManager.getLogger(MappingProperties.class
			.getName());

	private static Properties props = MappingProperties.readProperties();

	/**
	 * Get properties from mapping.properties resource.
	 * 
	 * @return the props
	 */
	public static Properties getProps() {
		return props;
	}

	/**
	 * A bioportal namespace prefix for term mapping URIs. See
	 * mapping.properties in resources for details.
	 */
	public static String mapNS = props.getProperty("ns.mapping");

	/**
	 * A bioportal namespace prefix for ontology term URIs. See
	 * mapping.properties in resources for details.
	 */
	public static String purlNS = props.getProperty("ns.purl");

	/**
	 * A bioportal namespace prefix for ontology acronyms. See
	 * mapping.properties in resources for details.
	 */
	public static String ontNS = props.getProperty("ns.ontologies");

	/**
	 * The set of UMLS SAB are mapped to bioportal ontologies. This is a
	 * translation table from UMLS SAB to bioportal ontology acronyms.
	 * 
	 * keys: UMLS ontology acronym (SAB)
	 * 
	 * values: UmlsMrmapSAB2BP object that contains: UMLS ontology acronym,
	 * bioportal ontology acronym, bioportal ontology virtual ID.
	 */
	public static HashMap<String, UmlsMrmapSAB2BP> umlsSAB = parseUmlsSAB();

	private static Properties readProperties() {

		Properties props = new Properties();
		InputStream in = null;

		try {
			// String mapProps =
			// "/org/ncbo/stanford/mappings/mapping.properties";
			String mapProps = "/mapping.properties";
			in = MappingProperties.class.getResourceAsStream(mapProps);
			props.load(in);

		} catch (FileNotFoundException ex) {
			log.fatal(ex.getMessage());
			ex.printStackTrace();

		} catch (IOException ex) {
			log.fatal(ex.getMessage());
			ex.printStackTrace();

		} finally {

			try {
				if (in != null)
					in.close();
			} catch (IOException ex) {
				log.fatal(ex.getMessage());
				ex.printStackTrace();
			}
		}
		return props;
	}

	private static HashMap<String, UmlsMrmapSAB2BP> parseUmlsSAB() {
		int iUMLS_SAB = 0; // UMLS ontology acronym
		int iUMLS_ONT = 1; // bioportal ontology acronym
		int iUMLS_VID = 2; // bioportal ontology virtual ID
		UmlsMrmapSAB2BP bpSAB;
		HashMap<String, UmlsMrmapSAB2BP> SAB = new HashMap<String, UmlsMrmapSAB2BP>();
		String[] stArr = props.getProperty("umls.BP.SAB").split(";");
		for (int i = 0; i < stArr.length; i++) {
			String[] sab = stArr[i].split(",");
			bpSAB = new UmlsMrmapSAB2BP();
			bpSAB.umlsSAB = sab[iUMLS_SAB];
			bpSAB.bpOntSAB = sab[iUMLS_ONT];
			bpSAB.bpOntID = sab[iUMLS_VID];
			SAB.put(bpSAB.umlsSAB, bpSAB);
			log.debug(bpSAB.toString());
		}
		return SAB;
	}
}
