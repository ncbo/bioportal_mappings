package org.ncbo.stanford.mappings;

/**
 * A basic ontology term that contains:
 * 
 * URL and URI (string)
 * 
 * ontID (integer as string)
 * 
 * verID (integer as string)
 * 
 * @author dlweber
 */
public class Term {

	private static String urlPrefix = "http://bioportal.bioontology.org/ontologies/";

	/**
	 * The term has a URL
	 */
	protected String URL;

	/**
	 * @return the URL
	 */
	public String getURL() {
		return URL;
	}

	/**
	 * @param uRL
	 *            the URL to set
	 */
	public void setURL(String uRL) {
		URL = uRL;
	}

	/**
	 * @return the URI (<URL>)
	 */
	public String getURI() {
		return "<" + URL + ">";
	}

	/**
	 * The term belongs to a bioportal ontologyVirtualID.
	 */
	protected String ontID;

	/**
	 * @return the ontID
	 */
	public String getOntID() {
		return ontID;
	}

	/**
	 * @return the ontURL
	 */
	public String getOntURL() {
		return urlPrefix + ontID;
	}

	/**
	 * @return the ontURL
	 */
	public String getOntURI() {
		return "<" + getOntURL() + ">";
	}

	/**
	 * @param ontID
	 *            the ontID to set
	 */
	public void setOntID(String ontID) {
		this.ontID = ontID;
	}

	/**
	 * The term belongs to a bioportal ontologyVersionID.
	 */
	protected String verID;

	/**
	 * @return the verID
	 */
	public String getVerID() {
		return verID;
	}

	/**
	 * @return the verURL
	 */
	public String getVerURL() {
		return urlPrefix + verID;
	}

	/**
	 * @return the verURI
	 */
	public String getVerURI() {
		return "<" + getVerURL() + ">";
	}

	/**
	 * @param verID
	 *            the verID to set
	 */
	public void setVerID(String verID) {
		this.verID = verID;
	}

	/**
	 * Set the term URL, ontID and verID using public Strings (for now).
	 */
	public Term() {
		super();
	}

	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Term other = (Term) obj;
		if (!this.matchURL(other))
			return false;
		if (!this.matchOntID(other))
			return false;
		if (!this.matchVerID(other))
			return false;
		return true;
	}

	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((URL == null) ? 0 : URL.hashCode());
		result = prime * result + ((ontID == null) ? 0 : ontID.hashCode());
		result = prime * result + ((verID == null) ? 0 : verID.hashCode());
		return result;
	}

	/**
	 * @param obj
	 *            Another {@link Term}
	 * @return True when the other {@link Term#getURL} equals {@link #getURL}.
	 */
	public boolean matchURL(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Term other = (Term) obj;
		String otherURL = other.getURL();
		if (URL == null) {
			if (otherURL != null)
				return false;
		} else if (!URL.equals(otherURL))
			return false;
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link Term}
	 * @return True when the other {@link Term#getOntID} equals
	 *         {@link #getOntID}.
	 */
	public boolean matchOntID(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Term other = (Term) obj;
		String otherOntID = other.getOntID();
		if (ontID == null) {
			if (otherOntID != null)
				return false;
		} else if (!ontID.equals(otherOntID))
			return false;
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link Term}
	 * @return True when the other {@link Term#getVerID} equals
	 *         {@link #getVerID}.
	 */
	public boolean matchVerID(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Term other = (Term) obj;
		String otherVerID = other.getVerID();
		if (verID == null) {
			if (otherVerID != null)
				return false;
		} else if (!verID.equals(otherVerID))
			return false;
		return true;
	}

	public String toString() {
		return "Term [URL=" + URL + ", ontID=" + ontID + ", verID=" + verID
				+ "]";
	}

	/**
	 * @param sep
	 *            A string delimiter, usually a tab: "\t".
	 * @return a delimited string containing: {@link #getURL}, {@link #getOntID}
	 *         , {@link #getVerID}. This string could be used to reconstruct
	 *         this term using {@link #parseTerm(String, String)}
	 */
	public String toStringDelimited(String sep) {
		return URL + sep + ontID + sep + verID;
	}

	/**
	 * Parse a string created by {@link #toStringDelimited(String)}.
	 * 
	 * @param line
	 *            Each line is a delimited string containing: {@link #getURL},
	 *            {@link #getOntID}, {@link #getVerID}
	 * @param sep
	 *            A string delimiter, usually a tab: "\t".
	 */
	public void parseTerm(String line, String sep) {
		// String[] termArray = line.split("\t");
		String[] termArray = line.split(sep);
		setURL(termArray[0]);
		setOntID(termArray[1]);
		setVerID(termArray[2]);
	}

}