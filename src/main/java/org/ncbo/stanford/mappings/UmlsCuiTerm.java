package org.ncbo.stanford.mappings;

/**
 * A UmlsCuiTerm extends Term, adding:
 * 
 * label - a UMLS CUI (string)
 * 
 * type - a static string 'umlsCui'
 * 
 * @author dlweber
 */
public class UmlsCuiTerm extends Term {

	/**
	 * The term label, UMLS CUI.
	 */
	public String label;

	/**
	 * All UmlsCuiTerm instances have type "umlsCui".
	 */
	public static final String type = "umlsCui";

	public boolean equals(Object obj) {
		if (!super.equals(obj))
			return false;
		UmlsCuiTerm other = (UmlsCuiTerm) obj;
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
	 *            Another {@link UmlsCuiTerm}
	 * @return True when the other {@link #label} equals {@link #label}.
	 */
	public boolean matchLabel(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UmlsCuiTerm other = (UmlsCuiTerm) obj;
		if (label == null) {
			if (other.label != null)
				return false;
		} else if (!label.equals(other.label))
			return false;
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link UmlsCuiTerm}
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
		return "UmlsCuiTerm [label=" + label + ", type=" + type + ", URL="
				+ getURL() + ", ontID=" + getOntID() + ", verID=" + getVerID()
				+ "]";
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
