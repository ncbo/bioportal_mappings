package org.ncbo.stanford.mappings;

//import org.ncbo.stanford.mappings.loom.BioportalApiKey;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.sparql.engine.http.QueryEngineHTTP;

/**
 * This class is an extension of {@link MappingQuery}, for mapping terms with
 * identical UMLS-CUI across different ontologies.
 * 
 * @author dlweber
 * 
 */

public final class UmlsCuiQuery extends MappingQuery {

	private static Logger log = LogManager.getLogger(UmlsCuiQuery.class
			.getName());

	private static String defaultFilePrefix = "umls_cui_";
	private static String defaultFileSuffix = "_terms.txt";

	@Override
	public String getHelp() {
		String help = lineSep + "Usage: UmlsCuiQuery [args] > outFilePath.txt"
				+ lineSep + "-h	print this message and exit" + lineSep
				+ "-p arg	set the output file path (system temp)" + lineSep
				+ "-fp arg	set the output file prefix (umlsCUI_terms_)"
				+ lineSep + "-fs arg	set the output file suffix (.txt)"
				+ lineSep + lineSep
				+ "Dumps all ontology terms into a temporary file." + lineSep
				+ "The path and name of that file is given on stdout."
				+ lineSep + "By default, it has the pattern:" + lineSep
				+ "${tmpPath}/umlsCUI_terms_${rand}.txt" + lineSep + lineSep
				+ "The temporary file contains ontology terms and identifiers."
				+ lineSep
				+ "The file is designed to be processed by a unix 'sort'."
				+ lineSep + lineSep;
		return help;
	}

	/**
	 * Output the term CUI, term URL, ontology virtual ID and version ID.
	 */
	private void printTerm(RDFNode termURL, RDFNode termCUI, long ontID,
			long verID) {
		UmlsCuiTerm term = new UmlsCuiTerm();
		term.setURL(termURL.toString());
		term.setOntID(String.valueOf(ontID));
		term.setVerID(String.valueOf(verID));
		try {
			// String label = (String) termCUI.visitWith(termVisitor);
			if (termCUI.isLiteral()) {
				term.label = termCUI.asLiteral().getLexicalForm();
				if (term.label.endsWith("@EN")) {
					log.error("termCUI ends in '@EN': {}", term.toString());
					// term.label = term.label.replace("@EN", "");
				}
			} else {
				term.label = termCUI.toString();
				if (termCUI.isAnon()) {
					log.error("termCUI isAnon: {}", term.toString());
				} else if (termCUI.isURIResource()) {
					log.error("termCUI isURIResource: {}", term.toString());
				} else if (termCUI.isResource()) {
					log.error("termCUI isResource: {}", term.toString());
				} else {
					log.error("termCUI is not literal: {}", term.toString());
				}
			}
		} catch (Exception e) {
			term.label = termCUI.toString();
			log.error("termCUI exception: {}", term.toString());
		}
		outStream.println(term.toStringDelimited(outSep));
	}

	@Override
	protected void processTerms(String ontVersionGraph, long ontVirtualID,
			long ontVersionID) {

		QueryEngineHTTP qEngineTerms = null;
		ResultSet resultTerms = null;
		QuerySolution solutionTerms = null;
		RDFNode termCUI = null;
		RDFNode termURL = null;

		try {
			// Create a query for terms from the virtual ontology URL.
			qEngineTerms = SparqlQueries.umlsCuiTerms(ontVersionGraph);
			resultTerms = qEngineTerms.execSelect();
			while (resultTerms.hasNext()) {
				solutionTerms = resultTerms.nextSolution();
				termURL = solutionTerms.get("termURL");
				termCUI = solutionTerms.get("termCUI");
				if (termCUI != null) {
					printTerm(termURL, termCUI, ontVirtualID, ontVersionID);
				}
			} // terms
		} catch (Exception e) {
			exitStatus = 1;
			log.fatal(e.toString());
			e.printStackTrace();
		} finally {
			qEngineTerms.close();
		}
	}

	/**
	 * For each ontology, retrieve all terms, and process the term CUI and URL.
	 * Output a table of rows that contain: termCUI, termType, termURL,
	 * ontVirtualID, ontVersionID.
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// Command line arguments are passed to initOutput().
		MappingQuery q = new UmlsCuiQuery();
		q.TESTING = false;
		q.init(args, defaultFilePrefix, defaultFileSuffix);
		q.processOntologies();
		if (exitStatus == 0) {
			log.info("Query completed successfully.");
		} else {
			log.error("Query encountered exceptions.");
		}
		System.exit(exitStatus);
	}
}
