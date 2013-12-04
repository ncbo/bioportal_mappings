package org.ncbo.stanford.mappings;

import junit.framework.TestCase;

/**
 * 
 * Test the MySQL connection.
 * 
 * @author dlweber
 * 
 */
public class MysqlTest extends TestCase {

	/**
	 * Check the MySQL server responds. Don't fail the test, a traceback is
	 * sufficient, so it's easier to compile the entire package.
	 */
	public final void testMysqlVersion() {
		MysqlVersion.main(null);
	}

}
