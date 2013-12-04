package org.ncbo.stanford.mappings;

import com.hp.hpl.jena.datatypes.RDFDatatype;
import com.hp.hpl.jena.datatypes.xsd.XSDDatatype;
import com.hp.hpl.jena.rdf.model.AnonId;
import com.hp.hpl.jena.rdf.model.Literal;
import com.hp.hpl.jena.rdf.model.RDFVisitor;
import com.hp.hpl.jena.rdf.model.Resource;

/**
 * @author dlweber
 * 
 */
public class TermVisitor implements RDFVisitor {

	public Object visitBlank(Resource r, AnonId id) {
		// return id.toString();
		// return r.toString();
		return "";
	}

	public Object visitLiteral(Literal termLiteral) {
		String termLabel = termLiteral.getLexicalForm();
		RDFDatatype dataType = termLiteral.getDatatype();
		if (dataType != null && dataType != XSDDatatype.XSDstring) {
			termLabel = "#ERROR: " + termLiteral.toString();
		}
		return termLabel;
	}

	public Object visitURI(Resource r, String uri) {
		return r.getURI();
	}
}
