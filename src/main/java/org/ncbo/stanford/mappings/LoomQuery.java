package org.ncbo.stanford.mappings;

//import org.ncbo.stanford.mappings.loom.BioportalApiKey;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.sparql.engine.http.QueryEngineHTTP;

/**
 * This class is an extension of {@link MappingQuery}, to handle lexical matches
 * between preferred labels of terms from different ontologies (and preferred
 * labels to synonyms).
 * 
 * @author dlweber
 * 
 */

public final class LoomQuery extends MappingQuery {

	private static Logger log = LogManager.getLogger(LoomQuery.class.getName());

	private static String defaultFilePrefix = "loom_";
	private static String defaultFileSuffix = "_terms.txt";

	@Override
	public String getHelp() {
		String help = lineSep + "Usage: LoomQuery [args] > outFilePath.txt"
				+ lineSep + "-h	print this message and exit" + lineSep
				+ "-p arg	set the output file path (system temp)" + lineSep
				+ "-fp arg	set the output file prefix (loom_terms_)" + lineSep
				+ "-fs arg	set the output file suffix (.txt)" + lineSep
				+ lineSep + "Dumps all ontology terms into a temporary file."
				+ lineSep
				+ "The path and name of that file is given on stdout."
				+ lineSep + "By default, it has the pattern:" + lineSep
				+ "${tmpPath}/loom_terms_${rand}.txt" + lineSep + lineSep
				+ "The temporary file contains ontology terms and identifiers."
				+ lineSep
				+ "The file is designed to be processed by a unix 'sort'."
				+ lineSep + lineSep;
		return help;
	}

	/**
	 * Output the term label, term type (skos:prefLabel or skos:altLabel), term
	 * URL, and virtual ontology ID.
	 */
	private void printTerm(RDFNode termURL, RDFNode termLabel,
			String labelType, long ontID, long verID) {
		String outStr = null;
		boolean useLabelStripped = true;
		LoomTerm term = new LoomTerm();
		term.setURL(termURL.asResource().getURI());
		term.type = labelType;
		term.setOntID(String.valueOf(ontID));
		term.setVerID(String.valueOf(verID));
		try {
			if (termLabel.isLiteral()) {
				term.label = termLabel.asLiteral().getLexicalForm();
				if (term.label.endsWith("@EN")) {
					log.error("LoomTerm ends in '@EN': {}", term.toString());
				}
			} else {
				term.label = termLabel.toString();
				if (termLabel.isAnon()) {
					log.error("LoomTerm isAnon: {}", term.toString());
				} else if (termLabel.isURIResource()) {
					log.error("LoomTerm isURIResource: {}", term.toString());
				} else if (termLabel.isResource()) {
					log.error("LoomTerm isResource: {}", term.toString());
				} else {
					log.error("LoomTerm is not literal: {}", term.toString());
				}
			}
		} catch (Exception e) {
			term.label = termLabel.toString();
			log.error("LoomTerm exception: {}", term.toString());
		}
		// Only use labels with more than 3 characters.
		if (term.labelStripped().length() <= 3) {
			log.debug("LoomTerm length < 3 char: {}", term.toString());
			return;
		}
		outStr = term.toStringDelimited(outSep, useLabelStripped);
		outStream.println(outStr);
		//
		// Exploring jena library.
		// Model m = termURL.getModel();
		// Property p = m.getProperty("http://www.w3.org/2004/02/skos/core#",
		// "skos:altLabel");
		// Resource r = termURL.asResource().getPropertyResourceValue(p);
	}

	@Override
	protected void processTerms(String ontVersionGraph, long ontVirtualID,
			long ontVersionID) {

		QueryEngineHTTP qEngineTerms = null;
		ResultSet resultTerms = null;
		QuerySolution solutionTerms = null;
		RDFNode termURL = null;
		RDFNode termLabel = null;
		String termType = null;

		log.trace("Starting processTerms.");

		try {
			// Create a query for terms from the virtual ontology URL.
			qEngineTerms = SparqlQueries.loomTerms(ontVersionGraph);
			resultTerms = qEngineTerms.execSelect();
			while (resultTerms.hasNext()) {
				solutionTerms = resultTerms.nextSolution();
				/*
				 * Every solution row contains a preferred label and maybe an
				 * alternative label. For every alternative label, the preferred
				 * label will be repeated. When there are no alternative labels,
				 * the altLabel will be null. This output repeats the prefLabel
				 * for every altLabel, so the unix sort processing on the output
				 * requires a unique option (-u) or it must include running uniq
				 * to remove all the duplicates for prefLabel. This solution is
				 * preferred for the java code here, otherwise there must be an
				 * additional SPARQL loop for every term just to get any
				 * altLabels for any prefLabel.
				 */
				termURL = solutionTerms.get("termURL");
				if (termURL == null) {
					log.error("Term is null.");
					continue;
				}
				if (!termURL.isURIResource()) {
					log.warn("Term is not a URI: " + termURL.toString());
				}
				termType = "skos:prefLabel";
				termLabel = solutionTerms.get("prefLabel");
				if (termLabel != null) {
					printTerm(termURL, termLabel, termType, ontVirtualID,
							ontVersionID);
				}
				termType = "skos:altLabel";
				termLabel = solutionTerms.get("altLabel");
				if (termLabel != null) {
					printTerm(termURL, termLabel, termType, ontVirtualID,
							ontVersionID);
				}
			} // nextSolution
			resultTerms = null;
		} catch (Exception e) {
			log.fatal(e.toString());
			e.printStackTrace();
			exitStatus = 1;
		} finally {
			qEngineTerms.close();
		}
		log.trace("Finished processTerms.");
	}

	/**
	 * For each ontology, retrieve all terms, and identify whether they are
	 * preferred terms or synonyms. Output a table of rows that contain:
	 * termLabel, pref/syn, termID, ontVirtualID, ontVersionID. The termID and
	 * ontVersionID comprise a unique ID.
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// Command line arguments are passed to initOutput().
		log.trace("Starting main.");
		MappingQuery q = new LoomQuery();
		q.TESTING = false;
		q.init(args, defaultFilePrefix, defaultFileSuffix);
		q.processOntologies();
		if (exitStatus == 0) {
			log.info("Query completed successfully.");
		} else {
			log.fatal("Query encountered exceptions.");
		}
		log.trace("Finished main.");
		System.exit(exitStatus);
	}
}
