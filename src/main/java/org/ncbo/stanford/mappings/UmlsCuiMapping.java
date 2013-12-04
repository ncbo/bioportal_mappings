/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * A UmlsCuiMapping extends {@link Mapping}, using UmlsCuiInfo.
 * 
 * @author dlweber
 */
public class UmlsCuiMapping extends Mapping {

	private static MappingInfo umlsCuiInfo = new UmlsCuiInfo();

	/**
	 * Class constructor.
	 * 
	 * @param A
	 *            An instance of {@link Term} with a relation to B.
	 * @param B
	 *            An instance of {@link Term} with a relation to A.
	 */
	public UmlsCuiMapping(Term A, Term B) {
		super();
		termA = A;
		termB = B;
		mapInfo = umlsCuiInfo;
		setMapRelation(mapInfo.mapRelation);
		setID();
	}

}
