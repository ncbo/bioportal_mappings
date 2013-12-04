/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * A LoomMapping extends {@link Mapping}, using LoomInfo.
 * 
 * @author dlweber
 */
public class LoomMapping extends Mapping {

	private static MappingInfo loomInfo = new LoomInfo();

	/**
	 * Class constructor.
	 * 
	 * @param A
	 *            An instance of {@link Term} with a relation to B.
	 * @param B
	 *            An instance of {@link Term} with a relation to A.
	 */
	public LoomMapping(Term A, Term B) {
		super();
		termA = A;
		termB = B;
		mapInfo = loomInfo;
		setMapRelation(mapInfo.mapRelation);
		setID();
	}

}
