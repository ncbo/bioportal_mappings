package org.ncbo.stanford.mappings;

import java.io.File;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.Set;

import org.apache.commons.io.FilenameUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * This class is an extension of {@link MappingParseArgs}, to handle mapping
 * output files.
 * 
 * @author dlweber
 * 
 */
public abstract class MappingGenerator extends MappingParseArgs {

	private Logger log = LogManager.getLogger(MappingGenerator.class.getName());

	private File oFile;
	private String oFileName;
	private short oFileNumber = 0;
	protected PrintStream oStream = null;
	// http://www.w3.org/TeamSubmission/turtle/
	private String oSerializeFormat = "turtle";
	// private static String delimiter = "\t";

	private MappingInfo mapInfo;

	// Manage the output file size by counting mappings.
	protected int oMapCount = 0;
	protected int oMapCountMax = 500000;

	/**
	 * @param m
	 */
	public void setMappingInfo(MappingInfo m) {
		this.mapInfo = m;
		log.info(mapInfo.mappingSourceName);
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
	protected void createOutputStream() throws Exception {
		String fName = FilenameUtils.normalize(oFileName);
		String name = FilenameUtils.removeExtension(fName);
		String ext = FilenameUtils.getExtension(fName);
		if (oSerializeFormat.equals("turtle")) {
			ext = "ttl";
		} else if (oSerializeFormat.equals("Ntriples")) {
			ext = "nt";
		} else if (ext.equals("")) {
			ext = "txt";
		}
		fName = String.format("%s_mappings_%03d.%s", name, ++oFileNumber, ext);
		try {
			oFile = new File(fName);
			oStream = new PrintStream(oFile);
			if (oSerializeFormat.equals("turtle")) {
				oStream.println(SparqlPrefixes.ttlMappingPrefix());
				oStream.println();
				if (oFileNumber == 1) {
					oStream.println(mapInfo.ttlSignature());
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
	 * @param args
	 *            - comamnd line argv[].
	 * @param filePrefix
	 * @param fileSuffix
	 */
	protected void init(String[] args, String filePrefix, String fileSuffix) {
		try {
			oFile = parseArgs(args, filePrefix, fileSuffix);
			oFileName = oFile.getAbsolutePath();
			createOutputStream();
			System.out.println(oFileName);
		} catch (Exception e) {
			log.error("Failed to create oStream.");
			log.error(e.toString());
			e.printStackTrace();
			System.exit(1);
		}
	}

	protected void processOntologies() {
		Ontology ont;
		try {
			Set<String> ontGraphSet = SparqlQueries.ontMap.keySet();
			Iterator<String> ontGraphs = ontGraphSet.iterator();
			while (ontGraphs.hasNext()) {
				ont = SparqlQueries.ontMap.get(ontGraphs.next());
				log.debug("processing ontology: " + ont.toString());
				// Subclasses should override processTerms()
				processTerms(ont.graphURL, ont.virtualID, ont.versionID);
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		}
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
