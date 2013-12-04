package org.ncbo.stanford.mappings;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

import org.apache.commons.io.FilenameUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * 
 * @author dlweber
 * 
 *         Process the output of {@link LoomQuery}, after it is processed with a
 *         unix sort/uniq. This routine assumes that any matching terms will be
 *         on consecutive lines of the input file, so it only compares two lines
 *         at a time. It will identify ontology terms that can be mapped with
 *         the skos:closeMatch relationship. The mapping is based on a lexical
 *         match of the term label. The process will not map terms within an
 *         ontology. It maps preferred terms between ontologies, it also maps a
 *         preferred term to alternate terms (synonyms) across ontologies.
 * 
 */
abstract public class LoomMappings {

	private static Logger log = LogManager.getLogger(LoomMappings.class
			.getName());

	private static MappingInfo loomInfo = new LoomInfo();

	private static File iFile;
	private static File oFile;
	private static String iFileName;
	private static String oFileName;
	private static short oFileNumber = 0;
	private static BufferedReader iReader;
	private static PrintStream oStream = System.out;
	// http://www.w3.org/TeamSubmission/turtle/
	private static String oSerializeFormat = "turtle";
	private static String delimiter = "\t";

	// Manage the output file size by counting mappings.
	private static int oMapCount = 0;
	private static int oMapCountMax = 500000;

	// Retain a sequence of terms with the same labels.
	private static ArrayList<LoomTerm> termRetainer = new ArrayList<LoomTerm>();

	// Keep a set of all mapping IDs, to avoid creating duplicates.
	private static HashSet<String> mapSet = new HashSet<String>();

	private static ArrayList<String> skipLabels = new ArrayList<String>();
	private static String[] cellphone = new String[2];

	private static void createInputStream(String fName) throws Exception {
		if (fName == null) {
			log.warn("Assuming STDIN for terms.");
			InputStreamReader iStream = new InputStreamReader(System.in);
			iReader = new BufferedReader(iStream);
		} else {
			iFile = new File(fName);
			try {
				iReader = new BufferedReader(new FileReader(iFile));
			} catch (Exception e) {
				log.fatal("Cannot read file: {}", iFile.getAbsolutePath());
				throw e;
			}
		}
	}

	/**
	 * A method to set the output file name to a series of numbered files, using
	 * a pattern like:
	 * 
	 * fileName = String.format("%s_%03d.%s", fName, fNumber, ext);
	 * 
	 * When fName includes an extension, it is first removed and saved into ext.
	 * 
	 * @param fName
	 *            a file path + name (with or without an extension).
	 */
	private static void createOutputStream(String fName) throws Exception {
		fName = FilenameUtils.normalize(fName);
		String name = FilenameUtils.removeExtension(fName);
		String ext = FilenameUtils.getExtension(fName);
		if (oSerializeFormat.equals("turtle")) {
			ext = "ttl";
		} else if (oSerializeFormat.equals("Ntriples")) {
			ext = "nt";
		} else if (ext.equals("")) {
			ext = "txt";
		}
		fName = String.format("%s_%03d.%s", name, ++oFileNumber, ext);
		oFile = new File(fName);
		try {
			oStream.close();
			oStream = new PrintStream(new FileOutputStream(oFile));
			if (oSerializeFormat.equals("turtle")) {
				oStream.println(SparqlPrefixes.ttlMappingPrefix());
				oStream.println();
				if (oFileNumber == 1) {
					oStream.println(loomInfo.ttlSignature());
					oStream.println();
				}
			}
		} catch (Exception e) {
			log.fatal("Cannot create output file stream: {}",
					oFile.getAbsolutePath());
			throw e;
		}
	}

	/**
	 * Print an ontology term mapping created by LOOM.
	 */
	private static void printLoomMapping(Mapping loomMap) {
		if (!mapSet.contains(loomMap.hashString())) {
			mapSet.add(loomMap.hashString());
			// if (oSerializeFormat.equals("turtle")) {
			oStream.print(loomMap.toTurtle(true));
			// }
			oMapCount++;
		}
	}

	/**
	 * Create and output ontology term mappings.
	 * 
	 * Output bidirectional mappings. Note that a skos:closeMatch entails
	 * bidirectional mappings, but the bioportal system requires explicit
	 * entries.
	 */
	private static void createLoomMappings(Term term1, Term term2) {
		Mapping loomMap1 = new LoomMapping(term1, term2);
		Mapping loomMap2 = new LoomMapping(term2, term1);
		// Note how these two mappings depend on each other.
		loomMap1.setDependency(loomMap2.getURI());
		loomMap2.setDependency(loomMap1.getURI());
		printLoomMapping(loomMap1);
		printLoomMapping(loomMap2);
		oStream.println();
	}

	private static void processMatchingTerms() throws Exception {
		// Report all the matches between terms.
		LoomTerm term1 = null;
		LoomTerm term2 = null;
		while (!termRetainer.isEmpty()) {
			term1 = termRetainer.remove(0);
			Iterator<LoomTerm> itr = termRetainer.iterator();
			while (itr.hasNext()) {
				term2 = itr.next();
				// Don't report any matches within an ontology.
				if (term1.matchOntID(term2)) {
					log.trace("Skipping terms, same ontology:");
					log.trace("... {}", term1.toString());
					log.trace("... {}", term2.toString());
					continue;
				}
				// Detect any exact match for term URI.
				if (term1.matchURL(term2)) {
					// This is handled by the UriMatchMappings process
					log.trace("Skipping terms, same URL:");
					log.trace("... {}", term1.toString());
					log.trace("... {}", term2.toString());
					continue;
				}
				// Don't report matches between synonyms.
				if (term1.isSkosAltLabel() && term2.isSkosAltLabel()) {
					log.trace("Skipping terms, both altLabel:");
					log.trace("... {}", term1.toString());
					log.trace("... {}", term2.toString());
					continue;
				}
				// Ignore some term labels.
				if (skipLabels(term1, term2) || skipCellPhone(term1, term2)) {
					log.trace("Skipping terms, a label is problematic:");
					log.trace("... {}", term1.toString());
					log.trace("... {}", term2.toString());
					continue;
				}
				createLoomMappings(term1, term2);
			}
		}
		// Should not be necessary, but just to be sure!
		termRetainer.clear();
		// Do we need a new output file?
		if (oFileName != null && oMapCount > oMapCountMax) {
			createOutputStream(oFileName);
			oMapCount = 0;
		}
	}

	private static boolean skipLabels(LoomTerm term1, LoomTerm term2) {
		return skipLabels.contains(term1.label)
				|| skipLabels.contains(term2.label);
	}

	private static boolean skipCellPhone(LoomTerm term1, LoomTerm term2) {
		// Skip matches between 'cell' and 'cellulartelephone'
		boolean skip = false;
		if ((term1.label.equals(cellphone[0]) && term2.label
				.equals(cellphone[1]))
				|| (term1.label.equals(cellphone[1]) && term2.label
						.equals(cellphone[0])))
			skip = true;
		return skip;
	}

	/**
	 * Construct an ontology {@link LoomTerm}, by reading a line of text that
	 * contains: label type ontologyID virtualOntologyID.
	 * 
	 * @throws IOException
	 */
	private static LoomTerm readTerm() throws IOException {
		LoomTerm iTerm = null;
		String iLine = iReader.readLine();
		while (iLine != null) {
			log.trace("iLine = " + iLine);
			// Skip blank or comment lines
			if (iLine.length() == 0 || iLine.startsWith("#")) {
				iLine = iReader.readLine();
				continue;
			}
			iTerm = new LoomTerm();
			iTerm.parseTerm(iLine, delimiter);
			break;
		}
		return iTerm;
	}

	private static boolean retainTerm(LoomTerm term) {
		if (termRetainer.isEmpty()) {
			// There are no term labels to compare.
			return termRetainer.add(term);
		}
		LoomTerm retainedTerm = termRetainer.get(0);
		if (retainedTerm.matchLabel(term)) {
			return termRetainer.add(term);
		}
		return false;
	}

	/**
	 * @param args
	 *            args[0] may contain a file path for input, which can be used
	 *            when calling this class from a shell script.
	 */
	public static void main(String[] args) {

		try {
			// Configure input file(s).
			if (args.length > 0) {
				iFileName = args[0];
			}
			createInputStream(iFileName);

			// Configure output file(s).
			if (args.length > 1) {
				oFileName = args[1];
			}
			if (oFileName != null) {
				// Create the first of N output files.
				createOutputStream(oFileName);
			}
			log.trace("iFileName = " + iFileName);

			// Populate an array of term labels to be ignored. These are used in
			// processMatchingTerms().
			skipLabels.add("none");
			skipLabels.add("other");
			skipLabels.add("unidentified");
			skipLabels.add("unknown");
			skipLabels.add("unspecified");
			// The label 'all' is often poorly used in ontologies, so
			// it's vague and often generates poor matches in LOOM.
			skipLabels.add("all");
			// The label 'chair' has been found to match 'chairman'
                        // or 'chairperson' erroneously.
			skipLabels.add("chair");
			// Skip matches between 'cell' and 'cellulartelephone'
			cellphone[0] = "cellulartelephone";
			cellphone[1] = "cell";

			/*
			 * Process sorted terms. The algorithm reads N consecutive lines
			 * that have matching labels and reports all their matching terms.
			 */
			boolean retain = true;
			while (retain) {
				LoomTerm iTerm = readTerm();
				if (iTerm == null) {
					// At the EOF for the terms to be processed.
					break;
				}
				log.trace("iTerm = " + iTerm.toString());
				// Retain this term if it's label matches a retained term.
				retain = retainTerm(iTerm);
				if (!retain) {
					// This iTerm doesn't match any retained terms, so
					// process and clear the terms already retained.
					processMatchingTerms();
					// Start a new retention set.
					retain = retainTerm(iTerm);
				}
				log.trace("retain = " + retain);
			}
			// Process any remaining set of retained terms (at EOF).
			processMatchingTerms();

		} catch (Exception e) {
			log.fatal(e.toString());
			e.printStackTrace();
			System.exit(1);
		}
	}
}
