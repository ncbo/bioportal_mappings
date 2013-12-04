/**
 * 
 */
package org.ncbo.stanford.mappings;

/**
 * A UriMatchMapping extends {@link Mapping}, using UriMatchInfo.
 * 
 * @author dlweber
 */
public class UriMatchMapping extends Mapping {

	private static MappingInfo uriInfo = new UriMatchInfo();

	/**
	 * Class constructor.
	 * 
	 * @param A
	 *            An instance of {@link Term} with a relation to B.
	 * @param B
	 *            An instance of {@link Term} with a relation to A.
	 */
	public UriMatchMapping(Term A, Term B) {
		super();
		termA = A;
		termB = B;
		mapInfo = uriInfo;
		setMapRelation(mapInfo.mapRelation);
		setID();
	}

}
