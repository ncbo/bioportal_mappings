package org.ncbo.stanford.mappings;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * UMLS handbook notes on mappings:
 * http://www.ncbi.nlm.nih.gov/books/NBK9684/#ch02.I210_Mappings
 * 
 * @author dlweber
 * 
 */
public final class UmlsMrmapMappings {

	private static Logger log = LogManager.getLogger(UmlsMrmapMappings.class
			.getName());

	private static MappingInfo umlsInfo = new UmlsMrmapInfo();

	/*
	 * public String getHelp() { String help = lineSep +
	 * "Usage: UmlsMrmapMappings [args] > outFilePath.txt" + lineSep +
	 * "-h	print this message and exit" + lineSep +
	 * "-p arg	set the output file path (system temp)" + lineSep +
	 * "-fp arg	set the output file prefix (umls_mrmap)" + lineSep +
	 * "-fs arg	set the output file suffix (.txt)" + lineSep + lineSep +
	 * "Retrieves UMLS MRMAP data from MySQL." + lineSep +
	 * "The output file is given on stdout." + lineSep +
	 * "By default, it has the pattern:" + lineSep +
	 * "${tmpPath}/umls_mrmap_${rand}.txt" + lineSep + lineSep; return help; }
	 */

	// dbInit() sets the following:
	private static Properties props;
	private static String dbURL;
	private static String dbUser;
	private static String dbPass;

	private static void dbInit() {
		props = MappingProperties.getProps();
		dbURL = props.getProperty("umls.db.url");
		dbUser = props.getProperty("umls.db.user");
		dbPass = props.getProperty("umls.db.passwd");
	}

	// A map for translating MRMAP.REL values to SKOS values.
	private static HashMap<String, String> relMap;

	private static HashMap<String, HashSet<UmlsMrmapSet>> mapSetHash = new HashMap<String, HashSet<UmlsMrmapSet>>();

	private static void umlsInit() {
		// A map for translating MRMAP.REL values to SKOS values.
		relMap = new HashMap<String, String>();
		relMap.put("RB", props.getProperty("umls.MRMAP.REL.RB"));
		relMap.put("RN", props.getProperty("umls.MRMAP.REL.RN"));
		relMap.put("RO", props.getProperty("umls.MRMAP.REL.RO"));
		relMap.put("RQ", props.getProperty("umls.MRMAP.REL.RQ"));
		relMap.put("RU", props.getProperty("umls.MRMAP.REL.RU"));
		relMap.put("SY", props.getProperty("umls.MRMAP.REL.SY"));
		// Skip the "XR" relations because they are explicit records for
		// entities with no mapping relations. These might be used to remove
		// 'spurious' or 'bad' mappings.
		// relMap.put("XR", props.getProperty("umls.MRMAP.REL.XR"));
	}

	private static void logSQLException(SQLException ex, String level) {
		// Logger lgr = Logger.getLogger(UmlsMrmapMappings.class.getName());
		// lgr.log(level, ex.getMessage(), ex);
		if (level.equals("fatal")) {
			log.fatal(ex.getMessage());
		} else if (level.equals("warning")) {
			log.warn(ex.getMessage());
		} else {
			log.error(ex.getMessage());
		}
	}

	private static void getMapSets() {
		PreparedStatement qCUI = null;
		ResultSet rCUI = null;
		Connection con = null;
		try {
			String CUI;
			String sqlCUI = "select distinct MAPSETCUI from MRMAP";
			con = DriverManager.getConnection(dbURL, dbUser, dbPass);
			qCUI = con.prepareStatement(sqlCUI);
			rCUI = qCUI.executeQuery();
			while (rCUI.next()) {
				CUI = rCUI.getString("MAPSETCUI");
				getMapSet(CUI);
			}
			qCUI.close();
			rCUI.close();
		} catch (SQLException ex) {
			logSQLException(ex, "fatal");
		} finally {
			try {
				if (qCUI != null)
					qCUI.close();
				if (rCUI != null)
					rCUI.close();
				if (con != null)
					con.close();
			} catch (SQLException ex) {
				logSQLException(ex, "warning");
			}
		}
	}

	private static void getMapSet(String mapCUI) {
		String cui = " '" + mapCUI + "' ";
		String sqlFROM = "select distinct M.MAPSETSAB, M.FROMTYPE, M.TOTYPE, "
				+ "S.ATN, S.ATV from MRMAP as M, MRSAT as S "
				+ "where M.MAPSETCUI = S.CUI and S.CUI = " + cui
				+ "and S.ATN = 'FROMRSAB' "
				+ "order by M.MAPSETCUI, M.FROMTYPE, M.TOTYPE";

		String sqlTO = null;
		String sqlToFmt = "select distinct M.MAPSETSAB, M.FROMTYPE, M.TOTYPE, "
				+ "S.ATN, S.ATV from MRMAP as M, MRSAT as S "
				+ "where M.MAPSETCUI = S.CUI and S.CUI = " + cui
				+ "and M.FROMTYPE = '%s' " + "and M.TOTYPE = '%s' "
				+ "and S.ATN = 'TORSAB' "
				+ "order by M.MAPSETCUI, M.FROMTYPE, M.TOTYPE";

		HashSet<UmlsMrmapSet> mapSet = new HashSet<UmlsMrmapSet>();
		UmlsMrmapSet map;
		Connection conFROM = null;
		Connection conTO = null;
		PreparedStatement qFROM = null;
		PreparedStatement qTO = null;
		ResultSet rFROM = null;
		ResultSet rTO = null;
		try {
			conFROM = DriverManager.getConnection(dbURL, dbUser, dbPass);
			qFROM = conFROM.prepareStatement(sqlFROM);
			rFROM = qFROM.executeQuery();
			while (rFROM.next()) {
				map = new UmlsMrmapSet();
				map.CUI = mapCUI;
				map.SAB = rFROM.getString("MAPSETSAB");
				map.FROMTYPE = rFROM.getString("FROMTYPE");
				map.TOTYPE = rFROM.getString("TOTYPE");
				map.FROMSAB = rFROM.getString("ATV");
				// Get the TOSAB using the MAPSETCUI, FROMTYPE and TOTYPE.
				// There is only one TOSAB for each unique set of these values.
				sqlTO = String.format(sqlToFmt, map.FROMTYPE, map.TOTYPE);
				conTO = DriverManager.getConnection(dbURL, dbUser, dbPass);
				qTO = conTO.prepareStatement(sqlTO);
				rTO = qTO.executeQuery();
				// TODO: check there is only one row in the result set.
				while (rTO.next()) {
					map.TOSAB = rTO.getString("ATV");
				}
				qTO.close();
				rTO.close();
				map.setBioportalValues();
				mapSet.add(map);
			}
			mapSetHash.put(mapCUI, mapSet);
			qFROM.close();
			rFROM.close();
		} catch (SQLException ex) {
			logSQLException(ex, "fatal");
		} finally {
			try {
				if (qFROM != null)
					qFROM.close();
				if (rFROM != null)
					rFROM.close();
				if (qTO != null)
					qTO.close();
				if (rTO != null)
					rTO.close();
				if (conFROM != null)
					conFROM.close();
				if (conTO != null)
					conTO.close();
			} catch (SQLException ex) {
				logSQLException(ex, "warning");
			}
		}
	}

	private static void printMapping(UmlsMrmapSet map, String relation,
			String codeFROM, String codeTO) {
		// The URIs we generate are of the form:
		// http://purl.bioontology.org/ontology/{SAB}/{CODE}
		// or for HL7:
		// http://purl.bioontology.org/ontology/{SAB}/{CUI}
		String purlPrefix = MappingProperties.purlNS;
		String purlFROM = purlPrefix + map.fromBPontSAB;
		String purlTO = purlPrefix + map.toBPontSAB;
		// URL encode the UMLS TOEXPR/FROMEXPR.
		String encFROM = codeFROM;
		String encTO = codeTO;
		try {
			encFROM = URLEncoder.encode(codeFROM, "UTF-8");
			encTO = URLEncoder.encode(codeTO, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			log.error("Error in URLEncoding UMLS TO/FROM EXPR");
			e.printStackTrace();
		}
		// Generate ontology term objects.
		Term termFROM = new Term();
		termFROM.URL = purlFROM + "/" + encFROM;
		termFROM.ontID = String.valueOf(map.fromBPont.virtualID);
		termFROM.verID = String.valueOf(map.fromBPont.versionID);
		Term termTO = new Term();
		termTO.URL = purlTO + "/" + encTO;
		termTO.ontID = String.valueOf(map.toBPont.virtualID);
		termTO.verID = String.valueOf(map.toBPont.versionID);
		// Generate mapping objects
		UmlsMrmapMapping mapping1 = new UmlsMrmapMapping(termFROM, termTO);
		mapping1.setMapRelation(relMap.get(relation));
		UmlsMrmapMapping mapping2 = new UmlsMrmapMapping(termTO, termFROM);
		mapping2.setMapRelation(relMap.get(relation));
		// Set mapping dependency.
		mapping1.setDependency(mapping2.getURI());
		mapping2.setDependency(mapping1.getURI());
		// Output mappings in turtle format.
		boolean prefixDefined = true;
		System.out.print(mapping1.toTurtle(prefixDefined));
		System.out.print(mapping2.toTurtle(prefixDefined));
		System.out.println();
	}

	private static void processMappings(UmlsMrmapSet map) {
		Connection con = null;
		PreparedStatement qMap = null;
		ResultSet rMap = null;
		try {
			String REL = null;
			String FROMEXPR = null;
			String TOEXPR = null;
			String WHERE = String.format("where FROMTYPE = '%s' "
					+ "and TOTYPE = '%s' " + "and MAPSETCUI = '%s' ",
					map.FROMTYPE, map.TOTYPE, map.CUI);
			String sql = "select REL, FROMEXPR, TOEXPR from MRMAP " + WHERE;
			con = DriverManager.getConnection(dbURL, dbUser, dbPass);
			qMap = con.prepareStatement(sql);
			rMap = qMap.executeQuery();
			int count = 0;
			while (rMap.next()) {
				REL = rMap.getString("REL");
				if (!relMap.containsKey(REL))
					continue;
				// FROMID = rMap.getString("FROMID"); // UMLS ID (not CUI, etc.)
				// TOID = rMap.getString("TOID"); // UMLS ID (not CUI, etc.)
				FROMEXPR = rMap.getString("FROMEXPR"); // May be 'CODE'
				TOEXPR = rMap.getString("TOEXPR"); // May be 'CODE'
				// For HL7, we need term CUIs (not CODEs):
				// http://purl.bioontology.org/ontology/{SAB}/{CUI}
				printMapping(map, REL, FROMEXPR, TOEXPR);
				count++;
			}
			log.info("{} mappings for: {}", count, map.toString());
			qMap.close();
			rMap.close();
		} catch (SQLException ex) {
			logSQLException(ex, "fatal");
		} finally {
			try {
				if (qMap != null)
					qMap.close();
				if (rMap != null)
					rMap.close();
				if (con != null)
					con.close();
			} catch (SQLException ex) {
				logSQLException(ex, "warning");
			}
		}
	}

	private static void processMapSets() {
		String CUI;
		UmlsMrmapSet map;
		HashSet<UmlsMrmapSet> cuiSet;
		Iterator<String> cuiIt = mapSetHash.keySet().iterator();
		while (cuiIt.hasNext()) {
			CUI = cuiIt.next();
			cuiSet = mapSetHash.get(CUI);
			Iterator<UmlsMrmapSet> mapIt = cuiSet.iterator();
			while (mapIt.hasNext()) {
				map = mapIt.next();
				// Check the TO/FROM SAB are in BP.
				if (!MappingProperties.umlsSAB.containsKey(map.FROMSAB))
					continue;
				if (!MappingProperties.umlsSAB.containsKey(map.TOSAB))
					continue;
				// TODO: Try to handle additional cases of TO/FROM TYPE.
				if (map.FROMTYPE.equalsIgnoreCase("CODE")
						&& map.TOTYPE.equalsIgnoreCase("CODE")) {
					processMappings(map);
				}
			}
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		dbInit();
		umlsInit();
		getMapSets();
		System.out.println(SparqlPrefixes.ttlMappingPrefix());
		System.out.println(umlsInfo.ttlSignature());
		processMapSets();
	}
}
