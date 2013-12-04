/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * A simple class (struct) for basic ontology information.
 * 
 * @author dlweber
 * 
 */
public class Ontology {

	/**
	 * A bioportal ontology graph URL (for triple store).
	 */
	public String graphURL;
	/**
	 * A bioportal virtual ontology URL.
	 */
	public String virtualURL;
	/**
	 * A bioportal ontology version URL.
	 */
	public String versionURL;
	/**
	 * A bioportal ontology virtual ID.
	 */
	public long virtualID;
	/**
	 * A bioportal ontology version ID.
	 */
	public long versionID;

	/**
	 * Construct a new Ontology object.
	 */
	public Ontology() {
		graphURL = null;
		virtualURL = null;
		versionURL = null;
		virtualID = -1;
		versionID = -1;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Ontology [graphURL=" + graphURL + ", virtualURL=" + virtualURL
				+ ", versionURL=" + versionURL + ", virtualID=" + virtualID
				+ ", versionID=" + versionID + "]";
	}
}
