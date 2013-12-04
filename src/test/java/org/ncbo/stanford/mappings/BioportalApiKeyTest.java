/**
 * 
 */
package org.ncbo.stanford.mappings;

import junit.framework.TestCase;

/**
 * @author dlweber
 * 
 */
public class BioportalApiKeyTest extends TestCase {

	/**
	 * A valid user API key for bioportal.
	 */
	String user_apiKey;
	BioportalApiKey apiKey;

	protected void setUp() throws Exception {
		super.setUp();
		user_apiKey = "XXXX";
		apiKey = new BioportalApiKey(user_apiKey);
	}

	protected void tearDown() throws Exception {
		super.tearDown();
		user_apiKey = null;
		apiKey = null;
	}

	/**
	 * Test method for {@link org.ncbo.stanford.mappings.BioportalApiKey#getApiKey()}.
	 */
	public final void testGetApiKey() {
		assertEquals(user_apiKey, apiKey.getApiKey());
	}

	/**
	 * Test method for
	 * {@link org.ncbo.stanford.mappings.BioportalApiKey#setApiKey(java.lang.String)}.
	 */
	public final void testSetApiKey() {
		String testKey = "testing";
		try {
			apiKey.setApiKey(testKey);
			// This will throw an exception for an invalid API key, but the API
			// key should be set anyway.
			fail("Failed to throw exception for invalid API key.");
		} catch (Exception e) {
			assertEquals(testKey, apiKey.getApiKey());
		}
	}

	/**
	 * Test method for
	 * {@link org.ncbo.stanford.mappings.BioportalApiKey#validateApiKey()}.
	 */
	public final void testValidateApiKey() {
		// Validate the 'loom' API key.
		try {
			assertTrue(apiKey.validateApiKey());
		} catch (Exception e) {
			e.printStackTrace();
			fail("Failed to validate API key.");
		}
		// Create and test an invalid API key.
		String invalidApiKey = "invalidApiKey";
		try {
			apiKey.setApiKey(invalidApiKey);
			fail("Failed to throw exception for invalid API key.");
		} catch (Exception e) {
			assertEquals(invalidApiKey, apiKey.getApiKey());
		}
	}
}
