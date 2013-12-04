package org.ncbo.stanford.mappings;

/**
 * 
 * A simple class (data struct) to represent a UMLS MRMAP mapping set.
 * 
 * @author dlweber
 * 
 */
public class UmlsMrmapSet {

	private static String ontPrefix = MappingProperties.ontNS;

	/**
	 * UMLS MRMAP MAPSETCUI.
	 */
	public String CUI;
	/**
	 * UMLS MRMAP MAPSETSAB.
	 */
	public String SAB;
	/**
	 * UMLS MRMAP FROMTYPE.
	 */
	public String FROMTYPE;
	/**
	 * UMLS MRMAP TOTYPE.
	 */
	public String TOTYPE;
	/**
	 * UMLS MRMAP FROMSAB (in MRSAT ATN:ATV pair).
	 */
	public String FROMSAB;
	/**
	 * UMLS MRMAP TOSAB (in MRSAT ATN:ATV pair).
	 */
	public String TOSAB;

	/**
	 * Bioportal ontology acronym (SAB).
	 */
	public String fromBPontSAB = null;
	/**
	 * Bioportal ontology.
	 */
	public Ontology fromBPont = null;

	/**
	 * Bioportal ontology acronym (SAB).
	 */
	public String toBPontSAB = null;
	/**
	 * Bioportal ontology.
	 */
	public Ontology toBPont = null;

	/**
	 * Use the UMLS SAB value to set various bioportal ontology values.
	 */
	public void setBioportalValues() {
		UmlsMrmapSAB2BP umlsSAB2BP = null;
		if (MappingProperties.umlsSAB.containsKey(FROMSAB)) {
			umlsSAB2BP = MappingProperties.umlsSAB.get(FROMSAB);
			fromBPontSAB = umlsSAB2BP.bpOntSAB;
			fromBPont = SparqlQueries.ontMap.get(ontPrefix + fromBPontSAB);
		}
		if (MappingProperties.umlsSAB.containsKey(TOSAB)) {
			umlsSAB2BP = MappingProperties.umlsSAB.get(TOSAB);
			toBPontSAB = umlsSAB2BP.bpOntSAB;
			toBPont = SparqlQueries.ontMap.get(ontPrefix + toBPontSAB);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UmlsMrmapSet [CUI=" + CUI + ", SAB=" + SAB + ", FROMTYPE="
				+ FROMTYPE + ", TOTYPE=" + TOTYPE + ", FROMSAB=" + FROMSAB
				+ ", TOSAB=" + TOSAB + ", fromBPontSAB=" + fromBPontSAB
				+ ", fromBPont=" + fromBPont + ", toBPontSAB=" + toBPontSAB
				+ ", toBPont=" + toBPont + "]";
	}

}
