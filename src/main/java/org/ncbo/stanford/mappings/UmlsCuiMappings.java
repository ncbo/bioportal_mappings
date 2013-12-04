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
 *         Process the output of {@link UmlsCuiQuery}, after it is processed
 *         with a unix sort/uniq. This routine assumes that any matching terms
 *         will be on consecutive lines of the input file, so it only compares
 *         two lines at a time. It will identify ontology terms that can be
 *         mapped with the skos:closeMatch relationship. The mapping is based on
 *         a lexical match of the term label. The process will not map terms
 *         within an ontology. It maps preferred terms between ontologies, it
 *         also maps a preferred term to alternate terms (synonyms) across
 *         ontologies. *
 */
abstract public class UmlsCuiMappings {

	private static Logger log = LogManager.getLogger(UmlsCuiMappings.class
			.getName());

	private static MappingInfo umlsCuiInfo = new UmlsCuiInfo();

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
	private static ArrayList<UmlsCuiTerm> termRetainer = new ArrayList<UmlsCuiTerm>();

	// Keep a set of all mapping IDs, to avoid creating duplicates.
	private static HashSet<String> mapSet = new HashSet<String>();

	private static void createInputStream(String fName) throws Exception {
		if (fName == null) {
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
					oStream.println(umlsCuiInfo.ttlSignature());
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
	 * Print an ontology term mapping.
	 */
	private static void printMapping(Mapping map) {
		if (!mapSet.contains(map.hashString())) {
			mapSet.add(map.hashString());
			// if (oSerializeFormat.equals("turtle")) {
			oStream.print(map.toTurtle(true));
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
	private static void createUmlsCuiMappings(Term term1, Term term2, String cui) {
		Mapping umlsCuiMap1 = new UmlsCuiMapping(term1, term2);
		Mapping umlsCuiMap2 = new UmlsCuiMapping(term2, term1);
		// Note how these two mappings depend on each other.
		umlsCuiMap1.setDependency(umlsCuiMap2.getURI());
		umlsCuiMap2.setDependency(umlsCuiMap1.getURI());
		// Add the CUI to the mapping comment.
		String cuiComment = "\"CUI: " + cui + "\"";
		umlsCuiMap1.setComment(cuiComment);
		umlsCuiMap2.setComment(cuiComment);
		printMapping(umlsCuiMap1);
		printMapping(umlsCuiMap2);
		oStream.println();
	}

	private static void processMatchingTerms() throws Exception {
		// Report all the matches between terms.
		UmlsCuiTerm term1 = null;
		UmlsCuiTerm term2 = null;
		while (!termRetainer.isEmpty()) {
			term1 = termRetainer.remove(0);
			Iterator<UmlsCuiTerm> itr = termRetainer.iterator();
			while (itr.hasNext()) {
				term2 = itr.next();
				// Don't report any matches within an ontology.
				if (term1.matchOntID(term2)) {
					log.trace("Skipping terms, same ontology:");
					log.trace("... {}", term1.toString());
					log.trace("... {}", term2.toString());
					continue;
				}
				// Note that we want to generate a CUI match, even when terms
				// have an identical URI. These terms will also generate a
				// mapping in the UriMatchMappings process.
				if (term1.matchLabel(term2))
					createUmlsCuiMappings(term1, term2, term1.label);
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

	/**
	 * Construct an ontology {@link UmlsCuiTerm}, by reading a line of text that
	 * contains: label type ontologyID virtualOntologyID.
	 * 
	 * @throws IOException
	 */
	private static UmlsCuiTerm readTerm() throws IOException {
		UmlsCuiTerm iTerm = null;
		String iLine = null;
		do {
			iLine = iReader.readLine();
			if (iLine == null) {
				break;
			}
			if (iLine.length() == 0 || iLine.startsWith("#")) {
				// Skip these lines
				continue;
			}
			iTerm = new UmlsCuiTerm();
			iTerm.parseTerm(iLine, delimiter);
			break;
		} while (true);
		return iTerm;
	}

	private static boolean retainTerm(UmlsCuiTerm term) {
		if (termRetainer.isEmpty()) {
			// There are no term labels to compare.
			return termRetainer.add(term);
		}
		UmlsCuiTerm retainedTerm = termRetainer.get(0);
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
			/*
			 * Process sorted terms. The algorithm reads N consecutive lines
			 * that have matching labels and reports all their matching terms.
			 */
			boolean retain = true;
			do {
				UmlsCuiTerm iTerm = readTerm();
				if (iTerm == null) {
					break;
				}
				// Retain this term if it's label matches a retained term.
				retain = retainTerm(iTerm);
				if (!retain) {
					// Process and clear the retained terms.
					processMatchingTerms();
					// Start a new retention set.
					retain = retainTerm(iTerm);
				}
			} while (retain);
			// Process the last set of retained terms (at EOF).
			processMatchingTerms();

		} catch (Exception e) {
			log.fatal(e.toString());
			e.printStackTrace();
			System.exit(1);
		}
	}
}
