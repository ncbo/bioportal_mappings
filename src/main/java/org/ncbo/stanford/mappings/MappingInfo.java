package org.ncbo.stanford.mappings;

import java.util.Properties;

/**
 * Superclass for information about processes that generate mappings between
 * terms of different ontologies.
 * 
 * This class could be consistent with:
 * 
 * org.ncbo.stanford.mappings.bean.mapping.MappingBean
 * 
 * If the mapping generation code is integrated into bioportal_core, this class
 * could extend a mapping class or use an interface for mappings. At the moment,
 * there is no dependency on bioportal_core.
 * 
 * @author dlweber
 * 
 */
public class MappingInfo {

	/**
	 * Basic constructor.
	 */
	public MappingInfo() {
		super();
	}

	// Parameters used in bioportal core, from
	// org.ncbo.stanford.service.mapping.MappingService
	//
	// List<URI> source (see Mapping class)
	// List<URI> target (see Mapping class)
	// URI relation = mapRelation
	// Integer sourceOntologyId (see Mapping class)
	// Integer targetOntologyId (see Mapping class)
	// Integer sourceOntologyVersion (see Mapping class)
	// Integer targetOntologyVersion (see Mapping class)
	// Integer submittedBy (same here)
	// URI dependency (see Mapping class)
	// String comment (see Mapping class)
	// MappingSourceEnum mappingSource (same here)
	// String mappingSourceName (same here)
	// String mappingSourcecontactInfo = mappingSourceContactInfo
	// URI mappingSourceSite (same here)
	// String mappingSourceAlgorithm (same here)
	// String mappingType (same here)

	/*
	 * Note: the public instance variables below could be private, with
	 * associated get/set methods. For simplicity, they are public within this
	 * mapping generation code (for now).
	 */

	protected static Properties props = MappingProperties.getProps();
	protected static String mapGraphNS = MappingProperties.mapNS;

	private static String mapRDFS_NS = SparqlPrefixes.mapRDFS_NS;
	private static String head = "\t" + mapRDFS_NS;
	private static String procInfoProp = mapRDFS_NS + "has_process_info ";

	private static String date = head + "date ";
	private static String submit = head + "submitted_by ";
	private static String src_type = head + "mapping_type ";
	private static String src = head + "mapping_source ";
	private static String src_name = head + "mapping_source_name ";
	private static String src_contact = head + "mapping_source_contact_info ";
	private static String src_site = head + "mapping_source_site ";
	private static String src_algorithm = head + "mapping_source_algorithm ";

	private static String lineSep = System.getProperty("line.separator");
	private static String ttlCont = " ;" + lineSep;
	private static String ttlStop = " ." + lineSep;

	/**
	 * mapDate gives the mappings a unique URI for each time the process is run.
	 * It tags the mappings generated with the same time stamp, with a
	 * granularity of a day (when the process is run).
	 */
	protected static String mapDate = MappingUtils.xmlDateToday();

	/**
	 * A bioportal mapping process account API key. The default is defined in
	 * Mapping.properties for "bioportal.user.apiKey".
	 */
	public String apiKey = props.getProperty("bioportal.user.apiKey");
	/**
	 * A bioportal mapping process account ID. The default is defined in
	 * Mapping.properties for "bioportal.user.id".
	 */
	public String submittedBy = props.getProperty("bioportal.user.id");
	/**
	 * A triple store graph name.
	 */
	public String mapGraphName;
	/**
	 * A triple store graph IRI.
	 */
	public String mapGraphURI;
	/**
	 * The default relation for a mapping process. It must be an IRI, e.g.
	 * "http://www.w3.org/2004/02/skos/core#closeMatch"
	 */
	public String mapRelation;
	/**
	 * A description of the mapping algorithm.
	 */
	public String mappingSourceAlgorithm;

	/**
	 * A brief comment about the mapping process.
	 */
	// Removing process info comment because we want to avoid conflicts with
	// mapping comment. This arose out of adding a UMLS CUI to comments for
	// mappings between identical UMLS CUI.
	// public String mapComment;

	/**
	 * A contact email for the mapping process.
	 */
	public String mappingSourceContactInfo;
	/**
	 * The mapping process or algorithm name.
	 */
	public String mappingSourceName;
	/**
	 * The source of a mapping process, with values constrained by
	 * org.ncbo.stanford.enumeration.MappingSourceEnum, with only these two
	 * values: "Application" (default) or "Organization".
	 */
	public String mappingSource = "Application";
	/**
	 * The web address of a mapping source algorithm or software.
	 * 
	 * default = <http://www.bioontology.org/wiki/index.php/BioPortal_Mappings>
	 */
	public String mappingSourceSite = "<http://www.bioontology.org/wiki/index.php/BioPortal_Mappings>";
	/**
	 * A mapping process type.
	 * 
	 * default = "Automatic"
	 */
	public String mappingType = "Automatic";

	/**
	 * @return The mapping URL is: mapGraphURI + "/procinfo/" + mapDate;
	 */
	public String getURL() {
		return mapGraphURI + "/procinfo/" + mapDate;
	}

	/**
	 * @return the URI
	 */
	public String getURI() {
		return "<" + getURL() + ">";
	}

	/**
	 * @return an RDF description of the mapping info, in turtle syntax.
	 */
	public final String ttlSignature() {
		// Format the info in turtle syntax. This assumes the RDF prefix is
		// defined for Bioportal mappings.
		String str = "";
		StringBuilder info = new StringBuilder();
		str = getURI() + lineSep;
		info.append(str); // no head or ttlCont on this one
		str = String.format("\"%s\"^^xsd:dateTime", mapDate);
		info.append(date + str + ttlCont);
		// str = String.format("comment \"%s\"", mapComment);
		// info.append(head + str + ttlCont);
		str = String.format("\"%s\"^^xsd:integer", submittedBy);
		info.append(submit + str + ttlCont);
		str = String.format("\"%s\"", mappingType);
		info.append(src_type + str + ttlCont);
		str = String.format("\"%s\"", mappingSource);
		info.append(src + str + ttlCont);
		str = String.format("\"%s\"", mappingSourceName);
		info.append(src_name + str + ttlCont);
		str = String.format("\"%s\"", mappingSourceContactInfo);
		info.append(src_contact + str + ttlCont);
		str = String.format("%s", mappingSourceSite);
		info.append(src_site + str + ttlCont);
		str = String.format("\"%s\"", mappingSourceAlgorithm);
		info.append(src_algorithm + str + ttlStop);
		return info.toString();
	}

	/**
	 * This is a triple that refers to the mapping info URI. It assumes a prefix
	 * has been defined for the protege mappings schema
	 * {@link SparqlPrefixes#mapRDFS_NS}. This is incorporated into each mapping
	 * instance, as a reference to the mapping info generated when each mapping
	 * is created.
	 * 
	 * @return an RDF triple for a mapping, in turtle syntax.
	 */
	public final String ttlTriple() {
		return procInfoProp + getURI();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "MappingInfo [apiKey=" + apiKey + ", submittedBy=" + submittedBy
				+ ", mapGraphURI=" + mapGraphURI + ", mappingSourceAlgorithm="
				+ mappingSourceAlgorithm + ", mappingSourceContactInfo="
				+ mappingSourceContactInfo + ", mappingSourceName="
				+ mappingSourceName + ", mapRelation=" + mapRelation
				+ ", mappingSource=" + mappingSource + ", mappingSourceSite="
				+ mappingSourceSite + ", mappingType=" + mappingType + "]";
	}

}
