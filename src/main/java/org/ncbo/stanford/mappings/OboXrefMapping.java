/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * An OboXrefMapping extends {@link Mapping}, using OboXrefInfo.
 * 
 * @author dlweber
 */
public class OboXrefMapping extends Mapping {

	private static MappingInfo oboXrefInfo = new OboXrefInfo();

	/**
	 * Class constructor.
	 * 
	 * @param A
	 *            An instance of {@link Term} with a relation to B.
	 * @param B
	 *            An instance of {@link Term} with a relation to A.
	 */
	public OboXrefMapping(Term A, Term B) {
		super();
		termA = A;
		termB = B;
		mapInfo = oboXrefInfo;
		setMapRelation(mapInfo.mapRelation);
		setID();
	}

}
