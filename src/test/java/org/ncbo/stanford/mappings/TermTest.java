/**
 * 
 */
package org.ncbo.stanford.mappings;

import junit.framework.TestCase;

/**
 * 
 * @author dlweber
 * 
 */
public class TermTest extends TestCase {

	private LoomTerm termPref;
	private LoomTerm termAlt;
	private LoomTerm termSame;
	private LoomTerm termDiff;
	private StringBuilder termStr;

	/*
	 * (non-Javadoc)
	 * 
	 * @see junit.framework.TestCase#setUp()
	 */
	protected void setUp() throws Exception {
		super.setUp();
		termPref = new LoomTerm();
		termPref.label = "Term_&%A";
		termPref.type = "skos:prefLabel";
		termPref.setURL("http://purl.bioontology.org/ontology/ontology/ICD10PCS/0151");
		termPref.setOntID("1425");
		termPref.setVerID("46303");

		termStr = new StringBuilder();
		termStr.append("LoomTerm [label=" + termPref.label);
		termStr.append(", type=" + termPref.type);
		termStr.append(", URL=" + termPref.getURL());
		termStr.append(", ontID=" + termPref.getOntID());
		termStr.append(", verID=" + termPref.getVerID() + "]");

		termAlt = new LoomTerm();
		termAlt.label = "Term__+*a";
		termAlt.type = "skos:altLabel";
		termAlt.setURL(termPref.getURL());
		termAlt.setOntID(termPref.getOntID());
		termAlt.setVerID(termPref.getVerID());

		termSame = new LoomTerm();
		termSame.label = termPref.label;
		termSame.type = termPref.type;
		termSame.setURL(termPref.getURL());
		termSame.setOntID(termPref.getOntID());
		termSame.setVerID(termPref.getVerID());

		termDiff = new LoomTerm();
		termDiff.label = "Term_Diff";
		termDiff.type = "skos:prefLabel";
		termDiff.URL = "http://purl.bioontology.org/ontology/HOM-DATASOURCE_OSHPD/OSHPD_00pay_plan_0151";
		termDiff.ontID = "1648";
		termDiff.verID = "46190";
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see junit.framework.TestCase#tearDown()
	 */
	protected void tearDown() throws Exception {
		super.tearDown();
		termPref = null;
		termAlt = null;
		termSame = null;
		termDiff = null;
	}

	/**
	 * Test method for {@link LoomTerm#equals(java.lang.Object)}.
	 */
	public final void testEqualsObject() {
		assertTrue(termPref.equals(termSame));
		assertFalse(termPref.equals(termDiff));
	}

	/**
	 * Test method for {@link LoomTerm#isSkosAltLabel()}.
	 */
	public final void testIsSkosAltLabel() {
		assertTrue(termAlt.isSkosAltLabel());
		assertFalse(termAlt.isSkosPrefLabel());
		assertFalse(termPref.isSkosAltLabel());
	}

	/**
	 * Test method for {@link LoomTerm#isSkosPrefLabel()}.
	 */
	public final void testIsSkosPrefLabel() {
		assertTrue(termPref.isSkosPrefLabel());
		assertFalse(termPref.isSkosAltLabel());
		assertFalse(termAlt.isSkosPrefLabel());
	}

	/**
	 * Test method for {@link LoomTerm#labelStripped()}.
	 */
	public final void testLabelStripped() {
		assertEquals("terma", termAlt.labelStripped());
	}

	/**
	 * Test method for {@link LoomTerm#matchLabel(java.lang.Object)}.
	 */
	public final void testMatchLabel() {
		assertTrue(termPref.matchLabel(termSame));
		assertFalse(termPref.matchLabel(termDiff));
	}

	/**
	 * Test method for {@link LoomTerm#matchLabelStripped(java.lang.Object)}.
	 */
	public final void testMatchLabelStripped() {
		assertTrue(termPref.matchLabelStripped(termAlt));
		assertTrue(termPref.matchLabelStripped(termSame));
		assertFalse(termPref.matchLabelStripped(termDiff));
	}

	/**
	 * Test method for {@link LoomTerm#matchURL(java.lang.Object)} .
	 */
	public final void testMatchURI() {
		assertTrue(termPref.matchURL(termSame));
		assertFalse(termPref.matchURL(termDiff));
	}

	/**
	 * Test method for {@link LoomTerm#matchOntID(java.lang.Object)}.
	 */
	public final void testMatchOntID() {
		assertTrue(termPref.matchOntID(termSame));
		assertFalse(termPref.matchOntID(termDiff));
	}

	/**
	 * Test method for {@link LoomTerm#matchType(java.lang.Object)}.
	 */
	public final void testMatchType() {
		assertTrue(termPref.matchType(termSame));
		assertFalse(termPref.matchType(termAlt));
	}

	/**
	 * Test method for {@link LoomTerm#matchVerID(java.lang.Object)}.
	 */
	public final void testMatchVerID() {
		assertTrue(termPref.matchVerID(termSame));
		assertFalse(termPref.matchVerID(termDiff));
	}

	/**
	 * Test method for {@link LoomTerm#toString()}.
	 */
	public final void testToString() {
		assertEquals(termStr.toString(), termPref.toString());
		assertEquals(termPref.toString(), termSame.toString());
	}

	/**
	 * Test method for
	 * {@link LoomTerm#toStringDelimited(java.lang.String, boolean)} .
	 */
	public final void testToStringDelimited() {
		String tmp;
		String termStrSep = "\t";
		StringBuilder termStrDelim;
		termStrDelim = new StringBuilder();
		termStrDelim.append(termPref.label + termStrSep);
		termStrDelim.append(termPref.type + termStrSep);
		termStrDelim.append(termPref.URL + termStrSep);
		termStrDelim.append(termPref.ontID + termStrSep);
		termStrDelim.append(termPref.verID);
		tmp = termPref.toStringDelimited("\t", false);
		assertEquals(termStrDelim.toString(), tmp);
		termStrDelim = new StringBuilder();
		termStrDelim.append(termPref.labelStripped() + termStrSep);
		termStrDelim.append(termPref.type + termStrSep);
		termStrDelim.append(termPref.URL + termStrSep);
		termStrDelim.append(termPref.ontID + termStrSep);
		termStrDelim.append(termPref.verID);
		tmp = termPref.toStringDelimited("\t", true);
		assertEquals(termStrDelim.toString(), tmp);
	}

	/**
	 * Test method for
	 * {@link LoomTerm#parseTerm(java.lang.String, java.lang.String)}.
	 */
	public final void testParseTerm() {
		String sep = "\t";
		LoomTerm termNew = new LoomTerm();
		termNew.parseTerm(termPref.toStringDelimited(sep, false), sep);
		assertTrue(termPref.equals(termNew));
		// The stripped label cannot be used to reconstruct the original.
		termNew.parseTerm(termPref.toStringDelimited(sep, true), sep);
		assertFalse(termPref.equals(termNew));
	}

}
