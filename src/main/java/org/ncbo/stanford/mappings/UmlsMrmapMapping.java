/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * A UmlsCuiMapping extends {@link Mapping}, using UmlsMrmapInfo.
 * 
 * @author dlweber
 */
public class UmlsMrmapMapping extends Mapping {

	private static MappingInfo umlsInfo = new UmlsMrmapInfo();

	/**
	 * Class constructor.
	 * 
	 * @param A
	 *            An instance of {@link Term} with a relation to B.
	 * @param B
	 *            An instance of {@link Term} with a relation to A.
	 */
	public UmlsMrmapMapping(Term A, Term B) {
		super();
		termA = A;
		termB = B;
		mapInfo = umlsInfo;
		setMapRelation(mapInfo.mapRelation);
		setID();
	}
}
