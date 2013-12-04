package org.ncbo.stanford.mappings;

import junit.framework.TestCase;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * 
 * Test the Bioportal SPARQL server.
 * 
 * @author dlweber
 * 
 */
public class Bioportal4storeTest extends TestCase {

	private Bioportal4store tripleStore = null;

	private static Logger log = LogManager.getLogger(Bioportal4storeTest.class
			.getName());

	protected void setUp() throws Exception {
		super.setUp();
		try {
			tripleStore = new Bioportal4store();
		} catch (Exception e) {
			log.error("Invalid API key.");
			e.printStackTrace();
			System.exit(1);
		}
	}

	protected void tearDown() throws Exception {
		super.tearDown();
		tripleStore = null;
	}

	/**
	 * Ensure the SPARQL server returns at least one ontology.
	 */
	public final void testOntologyCount() {
		int count = -1;
		try {
			count = tripleStore.ontologyCount();
		} catch (Exception e) {
			e.printStackTrace();
			fail("Cannot determine ontology count");
		}
		log.info("Number of ontologies: {}", count);
		assertTrue(count > 0);
	}

	// public final void testExecuteQuery() {
	// fail("Not yet implemented"); // TODO
	// }

}
