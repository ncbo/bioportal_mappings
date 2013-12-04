package org.ncbo.stanford.mappings;

//import org.ncbo.stanford.mappings.loom.BioportalApiKey;

import java.util.HashSet;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.sparql.engine.http.QueryEngineHTTP;
import com.hp.hpl.jena.sparql.resultset.ResultSetMem;

/**
 * This class is an extension of {@link MappingGenerator}, to handle mappings
 * for OBO xref properties.
 * 
 * @author dlweber
 * 
 */

public final class OboXrefMappings extends MappingGenerator {

	private static Logger log = LogManager.getLogger(OboXrefMappings.class
			.getName());

	private static String defaultFilePrefix = "obo_xref_";
	private static String defaultFileSuffix = ".txt";

	private static MappingInfo oboXrefInfo = new OboXrefInfo();

	// Keep a set of all mapping IDs, to avoid creating duplicates.
	private static HashSet<String> mapSet = new HashSet<String>();

	@Override
	protected String getHelp() {
		// TODO: revise the help text.
		String help = lineSep
				+ "Usage: OboXrefMappings [args] > outFilePath.txt" + lineSep
				+ "-h	print this message and exit" + lineSep
				+ "-p arg	set the output file path (system temp)" + lineSep
				+ "-fp arg	set the output file prefix (oboXref_terms_)"
				+ lineSep + "-fs arg	set the output file suffix (.txt)"
				+ lineSep + lineSep
				+ "Dumps all ontology terms into a temporary file." + lineSep
				+ "The path and name of that file is given on stdout."
				+ lineSep + "By default, it has the pattern:" + lineSep
				+ "${tmpPath}/oboXref_terms_${rand}.txt" + lineSep + lineSep
				+ "The temporary file contains ontology terms and identifiers."
				+ lineSep
				+ "The file is designed to be processed by a unix 'sort'."
				+ lineSep + lineSep;
		return help;
	}

	@Override
	protected void processTerms(String ontVersionGraph, long ontVirtualID,
			long ontVersionID) {
		QueryEngineHTTP qEngineTerms = null;
		QuerySolution solutionTerms = null;
		ResultSetMem rsMem = null;
		ResultSet resultTerms = null;
		RDFNode termURL = null;
		RDFNode termXref = null;
		Term term1 = new Term();
		term1.setOntID(String.valueOf(ontVirtualID));
		term1.setVerID(String.valueOf(ontVersionID));
		try {
			// Create a query for terms from the virtual ontology URI.
			qEngineTerms = SparqlQueries.xrefTerms(ontVersionGraph);
			resultTerms = qEngineTerms.execSelect();

			rsMem = new ResultSetMem(resultTerms);
			while (rsMem.hasNext()) {
				solutionTerms = rsMem.nextSolution();
				if (solutionTerms == null) {
					log.error("null solutionTerms");
					continue;
				}
				termURL = solutionTerms.get("termURL");
				termXref = solutionTerms.get("termXref");
				if (termURL == null || termXref == null) {
					log.trace("termURL or termXref is null: {}",
							solutionTerms.toString());
					continue;
				} else if (termURL.isURIResource() && termXref.isURIResource()) {
					log.trace("TERM: {}", termURL.toString());
					log.trace("XREF: {}", termXref.toString());
					term1.setURL(termURL.asResource().getURI());
					// Run another query on the xref to get
					// all the ontology URL, vrtID, verID info.
					processXref(term1, termXref.asResource().getURI());
				} else {
					log.error("ERROR: term or xref is not a URI.");
					log.error("TERM: " + termURL.toString());
					log.error("XREF: " + termXref.toString());
				}
			} // terms
			rsMem = null;
		} catch (Exception e) {
			log.error("Failed term:xref relations.");
			log.error("ontVersionGraph = {}", ontVersionGraph);
			if (solutionTerms != null) {
				log.error("SOLUTION: " + solutionTerms.toString());
			}
			e.printStackTrace();
		} finally {
			qEngineTerms.close();
		}
	}

	private void processXref(Term term1, String xrefURL) {
		QueryEngineHTTP qEngineXref = null;
		QuerySolution solutionXref = null;
		ResultSet resultXref = null;
		Ontology ont = null;
		RDFNode verNode = null;
		String xVerGraph = null;
		Term xTerm = new Term();
		xTerm.setURL(xrefURL);
		// Run a query on the xref to get the ontology URL, vrtID, verID info.
		// There could be more than one ontology that contains the xref term.
		try {
			// Query for ontology graph IDs that contain the xrefURL.
			qEngineXref = SparqlQueries.xrefOntologies(xrefURL);
			resultXref = qEngineXref.execSelect();
			// ResultSetFactory.fromJSON(inputStream);
			for (; resultXref.hasNext();) {
				solutionXref = resultXref.nextSolution();
				verNode = solutionXref.get("verGraph");
				if (verNode == null) {
					log.trace("xref has no graph.");
					log.trace("xrefURL: {}", xrefURL);
					continue;
				}
				if (verNode.isURIResource()) {
					xVerGraph = verNode.asResource().getURI();
					ont = SparqlQueries.ontMap.get(xVerGraph);
					if (ont == null) {
						log.trace("No ontology for xref.");
						log.trace("xrefURL: {}", xrefURL);
						log.trace("xVerGraph: {}", xVerGraph);
						continue;
					}
					xTerm.setOntID(String.valueOf(ont.virtualID));
					xTerm.setVerID(String.valueOf(ont.versionID));
					// It's OK if the terms come from the same ontology.
					// Create bidirectional mappings.
					createMappings(term1, xTerm);
				} else {
					log.error("xref ont is not a URI.");
					log.error("verNode: {}", verNode.toString());
				}
			}
		} catch (Exception e) {
			log.error("Failed to get xref graphs.");
			log.error("term1: {}", term1.toString());
			log.error("xTerm: {}", xTerm.toString());
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngineXref.close();
		}
	}

	/**
	 * Create and output ontology term mappings.
	 * 
	 * Output bidirectional mappings. Note that a skos:closeMatch entails
	 * bidirectional mappings, but the bioportal system requires explicit
	 * entries.
	 * 
	 * @throws Exception
	 */
	private void createMappings(Term term1, Term term2) throws Exception {
		Mapping map1 = new OboXrefMapping(term1, term2);
		Mapping map2 = new OboXrefMapping(term2, term1);
		// Note how these two mappings depend on each other.
		map1.setDependency(map2.getURI());
		map2.setDependency(map1.getURI());
		printMapping(map1);
		printMapping(map2);
		oStream.println();
		oMapCount++;
		if (oMapCount > oMapCountMax) {
			createOutputStream();
			oMapCount = 0;
		}
	}

	/**
	 * Print an ontology term mapping.
	 */
	private void printMapping(Mapping map) {
		if (!mapSet.contains(map.hashString())) {
			mapSet.add(map.hashString());
			// if (oSerializeFormat.equals("turtle")) {
			oStream.print(map.toTurtle(true));
			// }
		} else {
			log.debug("Already mapped: {}", map.toString());
		}
	}

	/**
	 * For each ontology, retrieve all terms with an xref property and generate
	 * mappings between the term and the xref when the xref is a term of another
	 * ontology in BioPortal.
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// Command line arguments are passed to initOutput().
		MappingGenerator g = new OboXrefMappings();
		g.setMappingInfo(oboXrefInfo);
		g.init(args, defaultFilePrefix, defaultFileSuffix);
		g.processOntologies();
		log.info("OBO-XREF mappings completed.");
	}
}
