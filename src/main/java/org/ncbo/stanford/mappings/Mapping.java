package org.ncbo.stanford.mappings;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * 
 * The Mapping class represents a mapping between two ontology terms. A Mapping
 * object should be instantiated only after determination that two ontology
 * terms have a relation. That is, a Mapping object is assumed to have some kind
 * of relationship (mapping). This class is not designed to detect or determine
 * relationships between ontology terms. The purpose of this class is to provide
 * a reliable mapping ID (e.g., {@link #hashCode()}) and a standardized
 * {@link #toTurtle(boolean) serialized format } using turtle syntax.
 * 
 * @author dlweber
 */
public class Mapping {

	/**
	 * Information about the mapping process used to create a mapping.
	 */
	public MappingInfo mapInfo;

	private final StringBuilder ttl = new StringBuilder();
	private final String lineSep = System.getProperty("line.separator");
	private final String ttlMapRDFS = SparqlPrefixes.mapRDFS_NS;
	private final String ttlMapTYPE = ttlMapRDFS + "One_To_One_Mapping ";
	// private final String ttlMapID = ttlMapRDFS + "id ";
	private final String ttlHeader = "\t" + ttlMapRDFS;
	private final String ttlSource = ttlHeader + "source ";
	private final String ttlTarget = ttlHeader + "target ";
	private final String ttlRelation = ttlHeader + "relation ";
	private final String ttlDependency = ttlHeader + "dependency ";
	private final String ttlComment = ttlHeader + "comment ";
	private final String ttlOntSrcVrtURI = ttlHeader + "source_ontology ";
	private final String ttlOntTrgVrtURI = ttlHeader + "target_ontology ";
	private final String ttlOntSrcVerURI = ttlHeader
			+ "created_in_source_ontology_version ";
	private final String ttlOntTrgVerURI = ttlHeader
			+ "created_in_target_ontology_version ";
	// private final String xsdIntegerType = "^^xsd:integer";
	private final String ttlCont = " ;" + lineSep;
	private final String ttlStop = " ." + lineSep + lineSep;

	/**
	 * The URL is a hash appended to the {@link mapInfo#graph}
	 */
	private String URL = null;

	/**
	 * @return String representation of the mapping URL (includes ID).
	 */
	public String getURL() {
		return URL;
	}

	private void setURL() {
		URL = mapInfo.mapGraphURI + "/" + hash;
	}

	/**
	 * @return Wraps URL in <>.
	 */
	public String getURI() {
		return "<" + URL + ">";
	}

	/**
	 * A mapping is a relation between two ontology terms.
	 * 
	 * see {@link Term}
	 */
	protected Term termA;

	/**
	 * A mapping is a relation between two ontology terms.
	 * 
	 * see {@link Term}
	 */
	protected Term termB;

	/**
	 * @return the termA
	 */
	public Term getTermA() {
		return termA;
	}

	/**
	 * @param termA
	 *            the termA to set
	 */
	public void setTermA(Term termA) {
		this.termA = termA;
		setID();
	}

	/**
	 * @return the termB
	 */
	public Term getTermB() {
		return termB;
	}

	/**
	 * @param termB
	 *            the termB to set
	 */
	public void setTermB(Term termB) {
		this.termB = termB;
		setID();
	}

	/**
	 * The dependentURI of this mapping on any other mappings. Used in tracking
	 * the mappings between termA:termB and termB:termA.
	 */
	private String dependentURI = null;

	/**
	 * A comment for this mapping.
	 */
	private String comment = null;

	/**
	 * @return the comment
	 */
	public String getComment() {
		return comment;
	}

	/**
	 * @param comment
	 *            the comment to set
	 */
	public void setComment(String comment) {
		this.comment = comment;
	}

	/**
	 * A unique identifier for an ontology term mapping.
	 */
	private String hash;

	protected void setID() {
		hash = DigestUtils.md5Hex(termA.getURI() + termB.getURI()
				+ termA.getOntID() + termB.getOntID());
		setURL();
	}

	@Override
	public int hashCode() {
		return hash.hashCode();
	}

	/**
	 * @return the hash (as string)
	 */
	public String hashString() {
		return hash;
	}

	private String mapRelation;

	/**
	 * @return the mapRelation
	 */
	public String getMapRelation() {
		return mapRelation;
	}

	/**
	 * @param mapRelation
	 *            the mapRelation to set
	 */
	public void setMapRelation(String mapRelation) {
		this.mapRelation = mapRelation;
		// no setID() here, mapRelation is not in the mapping hashID.
	}

	/**
	 * A mapping between two ontology terms.
	 */
	public Mapping() {
		super();
	}

	/**
	 * Class constructor.
	 * 
	 * @param A
	 *            An instance of {@link Term} with a relation to B.
	 * @param B
	 *            An instance of {@link Term} with a relation to A.
	 */
	public Mapping(Term A, Term B) {
		termA = A;
		termB = B;
		setID();
	}

	/**
	 * @return the mapping RDF relation
	 */
	public String getDependency() {
		return dependentURI;
	}

	/**
	 * Set a dependency of this mapping on any other mappings.
	 * 
	 * @param newDependency
	 *            the URI for another mapping.
	 */
	public void setDependency(String newDependency) {
		dependentURI = newDependency;
	}

	/**
	 * 
	 * Output the mapping in Turtle syntax
	 * http://www.w3.org/TeamSubmission/turtle/
	 * 
	 * @param prefixDefined
	 *            If the ttlPrefix is already defined in an output destination,
	 *            it can suppressed by setting this true. Otherwise, the value
	 *            comes from "sparq.prefix.ttlMappingPrefix" in the
	 *            Mapping.properties resource.
	 * @return the string representing the ontology term mapping, using the
	 *         turtle format.
	 */
	public String toTurtle(boolean prefixDefined) {
		// Reset the StringBuilder
		ttl.setLength(0);
		ttl.trimToSize();
		ttl.ensureCapacity(1500);
		if (!prefixDefined) {
			ttl.append(SparqlPrefixes.ttlMappingPrefix());
		}
		// NOTE: Removing the 'mapRDFS:One_To_One_Mapping mapRDFS:id ?mapID'
		// so that triple store graphs can be separated easily.
		// ttl.append(ttlMapTYPE + ttlMapID + getURI() + ttlStop);
		ttl.append(getURI() + " a " + ttlMapTYPE + ttlCont);
		ttl.append(ttlSource + termA.getURI() + ttlCont);
		ttl.append(ttlTarget + termB.getURI() + ttlCont);
		ttl.append(ttlRelation + "<" + mapRelation + ">" + ttlCont);
		if (dependentURI != null) {
			ttl.append(ttlDependency + dependentURI + ttlCont);
		}
		if (comment != null) {
			ttl.append(ttlComment + comment + ttlCont);
		}
		ttl.append(ttlOntSrcVrtURI + termA.getOntURI() + ttlCont);
		ttl.append(ttlOntTrgVrtURI + termB.getOntURI() + ttlCont);
		ttl.append(ttlOntSrcVerURI + termA.getVerURI() + ttlCont);
		ttl.append(ttlOntTrgVerURI + termB.getVerURI() + ttlCont);
		ttl.append("\t" + mapInfo.ttlTriple() + ttlStop);
		return ttl.toString();
	}

	// private String xsdInteger(String i) {
	// return String.format("\"%s\"%s", i, xsdIntegerType);
	// }

}