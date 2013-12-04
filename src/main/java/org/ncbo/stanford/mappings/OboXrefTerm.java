package org.ncbo.stanford.mappings;

/**
 * A UmlsCuiTerm extends Term, adding:
 * 
 * label - an OBO xref property value
 * 
 * type - a static string 'obo-xref'
 * 
 * @author dlweber
 */
public class OboXrefTerm extends Term {

	/**
	 * The term * label - an OBO xref property value.
	 */
	public String label;
	/**
	 * The type is 'obo-xref'.
	 */
	private static String type = "obo-xref";

	public boolean equals(Object obj) {
		if (!super.equals(obj))
			return false;
		OboXrefTerm other = (OboXrefTerm) obj;
		if (!this.matchLabel(other))
			return false;
		return true;
	}

	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((label == null) ? 0 : label.hashCode());
		result = prime * result + type.hashCode();
		return result;
	}

	/**
	 * @param obj
	 *            Another {@link OboXrefTerm}
	 * @return True when the other {@link OboXrefTerm#label} equals
	 *         {@link #label}.
	 */
	public boolean matchLabel(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OboXrefTerm other = (OboXrefTerm) obj;
		if (label == null) {
			if (other.label != null)
				return false;
		} else if (!label.equals(other.label))
			return false;
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link OboXrefTerm}
	 * @return True when the other class equals this class, because the type is
	 *         static.
	 */
	public boolean matchType(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		return true;
	}

	public String toString() {
		return "OboXrefTerm [label=" + label + ", type=" + type + ", URL="
				+ URL + ", ontID=" + ontID + ", verID=" + verID + "]";
	}

	/**
	 * @param sep
	 *            A string delimiter, usually a tab: "\t".
	 * @return a delimited string containing: label, URL, ontID, verID. This
	 *         string could be used to reconstruct this term using
	 *         {@link #parseTerm(String,String)}.
	 */
	public String toStringDelimited(String sep) {
		return label + sep + type + sep + getURL() + sep + getOntID() + sep
				+ getVerID();
	}

	/**
	 * Parse a string created by {@link #toStringDelimited(String)}.
	 * 
	 * @param line
	 *            Each line is a delimited string containing: label, type, URL,
	 *            ontID, verID
	 */
	public void parseTerm(String line, String sep) {
		String[] termArray = line.split(sep);
		label = termArray[0];
		// type = termArray[1];
		setURL(termArray[2]);
		setOntID(termArray[3]);
		setVerID(termArray[4]);
	}
}
