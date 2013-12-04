package org.ncbo.stanford.mappings;

/**
 * 
 * A simple class (data struct) to represent a mapping between a UMLS ontology
 * source abbreviation (SAB) and it's equivalent bioportal ontology acronym and
 * virtual ID.
 * 
 * @author dlweber
 * 
 */
public class UmlsMrmapSAB2BP {

	/**
	 * UMLS ontology Source ABbreviation (SAB)
	 */
	public String umlsSAB;

	/**
	 * Bioportal ontology acronym (source abbreviation)
	 */
	public String bpOntSAB;

	/**
	 * Bioportal ontology virtual ID
	 */
	public String bpOntID;

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UmlsMrmapSAB2BP [umlsSAB=" + umlsSAB + ", bpOntSAB=" + bpOntSAB
				+ ", bpOntID=" + bpOntID + "]";
	}

}
