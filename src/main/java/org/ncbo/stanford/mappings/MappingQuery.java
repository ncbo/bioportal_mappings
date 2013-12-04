package org.ncbo.stanford.mappings;

//import org.ncbo.stanford.mappings.loom.BioportalApiKey;

import java.io.File;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * This class is a superclass for mapping query classes, which are designed to
 * be called from the unix command line. Their purpose is to dump ontology terms
 * into a file that can be processed with the unix 'sort' command. The
 * subclasses of MappingQuery provide custom methods for command-line help and
 * processing specific terms.
 * 
 * Usage: MappingQuery [args] > outFilePath.txt
 * 
 * -h print this message and exit
 * 
 * -path arg : set the output file path (system temp)
 * 
 * -fp arg : set the output file prefix (e.g.: loom_terms_)
 * 
 * -fs arg : set the output file suffix (.txt)
 * 
 * Dumps all ontology terms into a temporary file. The path and name of that
 * file is given on stdout. By default, it has the pattern:
 * ${tmpPath}/${mappingProcess}_terms_${rand}.txt
 * 
 * The temporary file contains ontology terms and identifiers. The file is
 * designed to be processed by a unix 'sort' command.
 * 
 * @author dlweber
 * 
 */

public abstract class MappingQuery extends MappingParseArgs {

	private static Logger log = LogManager.getLogger(MappingQuery.class
			.getName());

	/**
	 * During testing, limit the SPARQL query, etc.
	 */
	protected boolean TESTING = false;

	protected String sparqlOntologyFilter() {
		if (TESTING)
			return SparqlQueries.ontologyFilter();
		else
			return "";
	}

	/**
	 * Return an exit status.
	 */
	protected static int exitStatus = 0;

	/**
	 * Dump ontology terms to outStream (on outFile)
	 */
	protected File outFile = null;
	protected PrintStream outStream = null;
	// parseArgs uses these as parameters for File.createTempFile(), which
	// inserts a random number-string between the prefix and suffix.
	protected String filePrefix = "ontology_";
	protected String fileSuffix = "_terms.txt";

	/**
	 * output tab delimited text
	 */
	protected String outSep = "\t";

	protected void init(String[] args, String filePrefix, String fileSuffix) {
		try {
			outFile = parseArgs(args, filePrefix, fileSuffix);
			outStream = new PrintStream(outFile);
			System.out.println(outFile.getAbsolutePath());
			log.debug("Output file: " + outFile.getAbsolutePath());
		} catch (Exception e) {
			log.fatal("Failed to create outStream.");
			log.fatal(e.toString());
			e.printStackTrace();
		}
	}

	protected void processOntologies() {
		Ontology ont;
		try {
			log.trace("Starting processOntologies");
			Set<String> ontGraphSet = SparqlQueries.ontMap.keySet();
			Iterator<String> ontGraphs = ontGraphSet.iterator();
			while (ontGraphs.hasNext()) {
				ont = SparqlQueries.ontMap.get(ontGraphs.next());
				log.trace("Ontology: " + ont.toString());
				// Subclasses should override processTerms()
				processTerms(ont.graphURL, ont.virtualID, ont.versionID);
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		}
		log.trace("Finished processOntologies");
	}

	/**
	 * Output term identifiers.
	 * 
	 * @param ontVersionGraph
	 * @param ontVirtualID
	 * @param ontVersionID
	 */
	abstract protected void processTerms(String ontVersionGraph,
			long ontVirtualID, long ontVersionID);

}
