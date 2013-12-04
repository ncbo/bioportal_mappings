package org.ncbo.stanford.mappings;

import java.io.UnsupportedEncodingException;

/**
 * An ontology term that contains:
 * 
 * label (string)
 * 
 * type (skos:prefLabel or skos:altLabel)
 * 
 * URI (string)
 * 
 * ontID (integer as string)
 * 
 * verID (integer as string)
 * 
 * @author dlweber
 */
public class LoomTerm extends Term {

	/**
	 * The term label.
	 */
	public String label;
	/**
	 * A SKOS type of skos:prefLabel or skos:altLabel.
	 */
	public String type;

	public boolean equals(Object obj) {
		if (!super.equals(obj))
			return false;
		LoomTerm other = (LoomTerm) obj;
		if (!this.matchLabel(other))
			return false;
		if (!this.matchType(other))
			return false;
		return true;
	}

	/**
	 * @return True when term has a SKOS type of "skos:altLabel".
	 */
	public boolean isSkosAltLabel() {
		return type.equalsIgnoreCase("skos:altLabel");
	}

	/**
	 * @return True when term has a SKOS type of "skos:prefLabel".
	 */
	public boolean isSkosPrefLabel() {
		return type.equalsIgnoreCase("skos:prefLabel");
	}

	/**
	 * @return The {@link #label} as lower case, after removing all characters
	 *         that are not in the set defined by
	 *         {@link Character#isLetterOrDigit(char)}.
	 */
	public String labelStripped() {
		// http://docs.oracle.com/javase/tutorial/essential/regex/index.html
		// http://www.regular-expressions.info/posixbrackets.html
		//
		// TODO: Verify the char set is OK in UNICODE.
		// How to print a stream of bytes into a new String?
		StringBuilder tmp = new StringBuilder();
		try {
			for (byte b : label.getBytes("UTF-8")) {
				// if (Character.isLetterOrDigit((char) b)) {
				if (Character.isLetterOrDigit(b)) {
					tmp.append((char) b);
				}
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return tmp.toString().toLowerCase();
		// return label.toLowerCase().replaceAll("[^a-z0-9]", "");
	}

	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((label == null) ? 0 : label.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	/**
	 * @param obj
	 *            Another {@link LoomTerm}
	 * @return True when this.{@link #matchURL(Object)}(obj) and this.
	 *         {@link #isSkosPrefLabel()} and obj.{@link #isSkosAltLabel()}.
	 */
	public boolean matchAltTerm(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LoomTerm other = (LoomTerm) obj;
		if (!this.matchURL(other))
			return false;
		if (!this.isSkosPrefLabel())
			return false;
		if (!other.isSkosAltLabel())
			return false;
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link LoomTerm}
	 * @return True when the other {@link LoomTerm#label} equals {@link #label}.
	 */
	public boolean matchLabel(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LoomTerm other = (LoomTerm) obj;
		if (label == null) {
			if (other.label != null)
				return false;
		} else if (!label.equals(other.label))
			return false;
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link LoomTerm}
	 * @return True when the other {@link LoomTerm#labelStripped()} equals
	 *         {@link #labelStripped()}.
	 */
	public boolean matchLabelStripped(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LoomTerm other = (LoomTerm) obj;
		if (label == null) {
			if (other.label != null)
				return false;
		} else {
			if (!labelStripped().equals(other.labelStripped()))
				return false;
		}
		return true;
	}

	/**
	 * @param obj
	 *            Another {@link LoomTerm}
	 * @return True when the other {@link LoomTerm#type} equals {@link #type}.
	 */
	public boolean matchType(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		LoomTerm other = (LoomTerm) obj;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

	public String toString() {
		return "LoomTerm [label=" + label + ", type=" + type + ", URL="
				+ getURL() + ", ontID=" + getOntID() + ", verID=" + getVerID()
				+ "]";
	}

	/**
	 * @param sep
	 *            A string delimiter, usually a tab: "\t".
	 * @param stripped
	 *            If true, use {@link #labelStripped()}, otherwise use
	 *            {@link #label}.
	 * @return a delimited string containing: {@link #label}, {@link #type},
	 *         {@link Term#getURL}, {@link Term#getOntID}, {@link Term#getVerID}
	 *         . This string could be used to reconstruct this term using
	 *         {@link #parseTerm(String, String)} (but only when
	 *         stripped=false).
	 */
	public String toStringDelimited(String sep, boolean stripped) {
		String labelStr;
		if (stripped) {
			labelStr = labelStripped();
		} else {
			labelStr = label;
		}
		return labelStr + sep + type + sep + getURL() + sep + getOntID() + sep
				+ getVerID();
	}

	/**
	 * Parse a string created by {@link #toStringDelimited(String, boolean)}.
	 * 
	 * @param line
	 *            Each line is a delimited string containing: label, type, URL,
	 *            ontID, verID
	 */
	public void parseTerm(String line, String sep) {
		String[] termArray = line.split(sep);
		label = termArray[0];
		type = termArray[1];
		setURL(termArray[2]);
		setOntID(termArray[3]);
		setVerID(termArray[4]);
	}

}
