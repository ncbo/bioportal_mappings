package org.ncbo.stanford.mappings;

import java.io.File;
import java.io.IOException;

/**
 * This class is for parsing input arguments of mapping classes.
 * 
 * @author dlweber
 * 
 */
public abstract class MappingParseArgs {

	protected String lineSep = System.getProperty("line.separator");

	/**
	 * @return Command line help string (called by initOutput).
	 */
	abstract protected String getHelp();

	/**
	 * @param args
	 * @param filePrefix
	 * @param fileSuffix
	 * @return File
	 * @throws IOException
	 */
	protected File parseArgs(String[] args, String filePrefix, String fileSuffix)
			throws IOException {
		File filePath = new File("");
		String arg = "";
		int i = 0;
		while (i < args.length) {
			arg = args[i++];
			if (arg.equals("-p")) {
				filePath = new File(args[i++]);
			} else if (arg.equals("-fp")) {
				filePrefix = args[i++];
			} else if (arg.equals("-fs")) {
				fileSuffix = args[i++];
			} else if (arg.equals("-h")) {
				System.err.print(getHelp());
				System.exit(0);
			}
		}
		if (filePath.isDirectory()) {
			return File.createTempFile(filePrefix, fileSuffix, filePath);
		} else {
			return File.createTempFile(filePrefix, fileSuffix);
		}
	}

}
