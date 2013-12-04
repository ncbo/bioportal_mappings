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
 * identical URIs across different ontologies.
 * 
 * @author dlweber
 * 
 */

public final class UriMatchQuery extends MappingQuery {

	private static Logger log = LogManager.getLogger(UriMatchQuery.class
			.getName());

	private static String defaultFilePrefix = "uri_match_";
	private static String defaultFileSuffix = "_terms.txt";

	@Override
	public String getHelp() {
		String help = lineSep + "Usage: UriMatchQuery [args] > outFilePath.txt"
				+ lineSep + "-h	print this message and exit" + lineSep
				+ "-p arg	set the output file path (system temp)" + lineSep
				+ "-fp arg	set the output file prefix (uri_terms_)" + lineSep
				+ "-fs arg	set the output file suffix (.txt)" + lineSep
				+ lineSep + "Dumps all ontology terms into a temporary file."
				+ lineSep
				+ "The path and name of that file is given on stdout."
				+ lineSep + "By default, it has the pattern:" + lineSep
				+ "${tmpPath}/uri_terms_${rand}.txt" + lineSep + lineSep
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
	private void printTerm(RDFNode termURL, long ontID, long verID) {
		String uri = null;
		Term term = new Term();
		try {
			uri = termURL.asResource().getURI();
			if (uri != null) {
				term.setURL(uri);
				term.setOntID(String.valueOf(ontID));
				term.setVerID(String.valueOf(verID));
				outStream.println(term.toStringDelimited(outSep));
			}
		} catch (Exception e) {
			exitStatus = 1;
			log.error(e.toString());
			e.printStackTrace();
		}
	}

	@Override
	protected void processTerms(String ontVersionGraph, long ontVirtualID,
			long ontVersionID) {

		QueryEngineHTTP qEngineTerms = null;
		QuerySolution solutionTerms = null;
		ResultSet resultTerms = null;
		RDFNode termURL = null;

		try {
			// Create a query for terms from the virtual ontology URL.
			qEngineTerms = SparqlQueries.loomTerms(ontVersionGraph);
			resultTerms = qEngineTerms.execSelect();
			while (resultTerms.hasNext()) {
				solutionTerms = resultTerms.nextSolution();
				termURL = solutionTerms.get("termURL");
				printTerm(termURL, ontVirtualID, ontVersionID);
			}
			resultTerms = null;
		} catch (Exception e) {
			exitStatus = 1;
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngineTerms.close();
		}
	}

	/**
	 * For each ontology, retrieve all terms. Output a table of rows that
	 * contain: termURL, ontVirtualID, ontVersionID.
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// Command line arguments are passed to initOutput().
		MappingQuery q = new UriMatchQuery();
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
