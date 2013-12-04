package org.ncbo.stanford.mappings;

import java.util.HashMap;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.sparql.engine.http.QueryEngineHTTP;

/**
 * This is a SPARQL query to get ontology properties from bioportal.
 * 
 * @author dlweber
 * 
 */

abstract public class SparqlQueries {

	private static Logger log = LogManager.getLogger(SparqlQueries.class
			.getName());

	private static Properties props = MappingProperties.getProps();
	private static Bioportal4store tripleStore = new Bioportal4store();

	private static QueryEngineHTTP queryEngine(String query) throws Exception {
		log.trace("\n*********************************\n{}", query);
		return tripleStore.queryEngine(query);
	}

	/**
	 * 
	 * key: ontology graph URL
	 * 
	 * value: simple ontology class (struct)
	 */
	public static HashMap<String, Ontology> ontMap = storeOntologyData();

	private static HashMap<String, Ontology> storeOntologyData() {
		HashMap<String, Ontology> oMap = new HashMap<String, Ontology>();
		QueryEngineHTTP qEngineOnt = null;
		ResultSet resultOnt = null;
		Ontology ont = null;
		try {
			// Query and process each ontology.
			qEngineOnt = SparqlQueries.ontologies("");
			resultOnt = qEngineOnt.execSelect();
			while (resultOnt.hasNext()) {
				ont = createOntology(resultOnt.nextSolution());
				oMap.put(ont.graphURL, ont);
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngineOnt.close();
		}
		return oMap;
	}

	private static Ontology createOntology(QuerySolution solutionOnt) {
		RDFNode rdfNode;
		Ontology ont = new Ontology();
		try {
			// Get the ontology data from the ontologies query variables:
			// ?vrtURL ?vrtID ?verURL ?verID ?verGraph
			rdfNode = solutionOnt.get("verGraph");
			ont.graphURL = rdfNode.asResource().getURI();
			rdfNode = solutionOnt.get("vrtURL");
			ont.virtualURL = rdfNode.asResource().getURI();
			ont.virtualID = solutionOnt.get("vrtID").asLiteral().getLong();
			rdfNode = solutionOnt.get("verURL");
			ont.versionURL = rdfNode.asResource().getURI();
			ont.versionID = solutionOnt.get("verID").asLiteral().getLong();
			log.trace(ont.toString());
		} catch (Exception e) {
			log.error("Exception in SparqlQueries.createOntology().");
			log.error(e.toString());
			e.printStackTrace();
		}
		return ont;
	}

	// private static String composeSparqlPrefix() {
	// StringBuilder prefix = new StringBuilder();
	// prefix.append(SparqlPrefixes.standardSPARQL());
	// prefix.append(SparqlPrefixes.bioportalSPARQL());
	// return prefix.toString();
	// }

	/**
	 * This SPARQL filters ontologies. It's used to limit the results for
	 * {@link #ontologies(String)}
	 * 
	 * @return A filter string
	 */
	public static String ontologyFilter() {
		return props.getProperty("sparql.ontologyFilter");
	}

	/**
	 * This SPARQL finds all virtual ontologies. The select parameters returned
	 * are: ?vrtURL ?vrtID ?verID
	 * 
	 * @param filter
	 *            is a SPARQL expression to limit the results of the ontology
	 *            query.
	 * 
	 * @return A query engine to manage the SPARQL query.
	 * @throws Exception
	 */
	public static QueryEngineHTTP ontologies(String filter) throws Exception {
		String ontSparql = props.getProperty("sparql.ontologies");
		if (filter == null)
			filter = "";
		ontSparql = ontSparql.replaceAll("FILTER_REGEX", filter);
		return queryEngine(ontSparql);
		// return queryEngine(SparqlPrefixes.bioportalSPARQL() + ontSparql);
	}

	/**
	 * This SPARQL finds an ontology ID.
	 * 
	 * The select parameters returned are: ?ontID
	 * 
	 * @param ontURL
	 * @return SPARQL engine for ontology ID.
	 * @throws Exception
	 */
	public static QueryEngineHTTP ontologyID(String ontURL) throws Exception {
		String sparql = props.getProperty("sparql.ontologyID");
		sparql = sparql.replaceAll("REGEX", ontURL);
		return queryEngine(sparql);
	}

	/**
	 * @param ontURL
	 * @return The ontology ID (long), or -1.
	 */
	public static long getOntologyID(String ontURL) {
		QueryEngineHTTP qEngine = null;
		ResultSet resultSet = null;
		QuerySolution solution = null;
		long ID = -1;
		try {
			qEngine = SparqlQueries.ontologyID(ontURL);
			resultSet = qEngine.execSelect();
			// There should be only 1 row in the result set.
			if (resultSet.hasNext()) {
				solution = resultSet.nextSolution();
				ID = solution.get("ontID").asLiteral().getLong();
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngine.close();
		}
		return ID;
	}

	/**
	 * This SPARQL finds an ontology version from it's graph URL.
	 * 
	 * The select parameters returned are: ?verURL
	 * 
	 * @param ontURL
	 *            is a graph URL for an ontology version.
	 * @return SPARQL engine for an ontology graph to version translation.
	 * @throws Exception
	 */
	public static QueryEngineHTTP ontGraph2Version(String ontURL)
			throws Exception {
		String sparql = props.getProperty("sparql.ontologyGraph2Version");
		sparql = sparql.replaceAll("REGEX", ontURL);
		return queryEngine(sparql);
	}

	/**
	 * @param ontURL
	 *            is an ontology version graph URL.
	 * @return The ontology version URL (RDFNode)
	 */
	public static String getOntGraph2Version(String ontURL) {
		QueryEngineHTTP qEngine = null;
		ResultSet resultSet = null;
		QuerySolution solution = null;
		RDFNode verNode = null;
		String verURL = null;
		try {
			qEngine = SparqlQueries.ontGraph2Version(ontURL);
			resultSet = qEngine.execSelect();
			// There should be only 1 row in the result set.
			if (resultSet.hasNext()) {
				solution = resultSet.nextSolution();
				verNode = solution.get("verURL");
				verURL = verNode.asResource().getURI();
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngine.close();
		}
		return verURL;
	}

	/**
	 * This SPARQL finds an ontology graph from it's version URL.
	 * 
	 * The select parameters returned are: ?verGraph
	 * 
	 * @param ontURL
	 *            is an ontology version URL.
	 * @return SPARQL engine for an ontology version to graph translation.
	 * @throws Exception
	 */
	public static QueryEngineHTTP ontVersion2Graph(String ontURL)
			throws Exception {
		String sparql = props.getProperty("sparql.ontologyVersion2Graph");
		sparql = sparql.replaceAll("REGEX", ontURL);
		return queryEngine(sparql);
	}

	/**
	 * @param ontURL
	 *            is an ontology version graph URL.
	 * @return The ontology version URL (RDFNode)
	 */
	public static String getOntVersion2Graph(String ontURL) {
		QueryEngineHTTP qEngine = null;
		ResultSet resultSet = null;
		QuerySolution solution = null;
		RDFNode graphNode = null;
		String graphURL = null;
		try {
			qEngine = SparqlQueries.ontVersion2Graph(ontURL);
			resultSet = qEngine.execSelect();
			// There should be only 1 row in the result set.
			if (resultSet.hasNext()) {
				solution = resultSet.nextSolution();
				graphNode = solution.get("verGraph");
				graphURL = graphNode.asResource().getURI();
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngine.close();
		}
		return graphURL;
	}

	/**
	 * This SPARQL finds an ontology virtual URL from a version URL.
	 * 
	 * The select parameters returned are: ?vrtURL
	 * 
	 * @param ontURL
	 *            is an ontology version URL.
	 * @return SPARQL engine for an ontology version to virtual translation.
	 * @throws Exception
	 */
	public static QueryEngineHTTP ontVersion2Virtual(String ontURL)
			throws Exception {
		String sparql = props.getProperty("sparql.ontologyVersion2Virtual");
		sparql = sparql.replaceAll("REGEX", ontURL);
		return queryEngine(sparql);
	}

	/**
	 * @param ontURL
	 *            is an ontology version URL.
	 * @return The ontology virtual URL (RDFNode)
	 */
	public static String getOntVersion2Virtual(String ontURL) {
		QueryEngineHTTP qEngine = null;
		ResultSet resultSet = null;
		QuerySolution solution = null;
		RDFNode vrtNode = null;
		String vrtURL = null;
		try {
			qEngine = SparqlQueries.ontVersion2Virtual(ontURL);
			resultSet = qEngine.execSelect();
			// There should be only 1 row in the result set.
			if (resultSet.hasNext()) {
				solution = resultSet.nextSolution();
				vrtNode = solution.get("vrtURL");
				vrtURL = vrtNode.asResource().getURI();
			}
		} catch (Exception e) {
			log.error(e.toString());
			e.printStackTrace();
		} finally {
			qEngine.close();
		}
		return vrtURL;
	}

	/**
	 * This SPARQL finds all the term URLs and labels for a virtual ontology.
	 * 
	 * The select parameters returned are: ?termURL ?prefLabel ?altLabel
	 * 
	 * @param verGraph
	 * @return SPARQL engine for all loom terms.
	 * @throws Exception
	 */
	public static QueryEngineHTTP loomTerms(String verGraph) throws Exception {
		String termSparql = props.getProperty("sparql.loomTerms");
		return ontTermsEngine(verGraph, termSparql);
	}

	/**
	 * A generic ontology terms query, called by other term queries.
	 * 
	 * @param verGraph
	 * @param termSparql
	 * @return SPARQL engine for ontologies terms.
	 * @throws Exception
	 */
	public static QueryEngineHTTP ontTermsEngine(String verGraph,
			String termSparql) throws Exception {
		termSparql = termSparql.replaceAll("ONTOLOGY_REGEX", verGraph);
		return queryEngine(termSparql);
	}

	/**
	 * This SPARQL finds all the term URLs and labels for a virtual ontology.
	 * 
	 * The select parameters returned are: ?termURL ?termCUI
	 * 
	 * @param verGraph
	 * @return SPARQL engine for all umlsCui terms.
	 * @throws Exception
	 */
	public static QueryEngineHTTP umlsCuiTerms(String verGraph)
			throws Exception {
		String termSparql = props.getProperty("sparql.cuiTerms");
		return ontTermsEngine(verGraph, termSparql);
	}

	/**
	 * This SPARQL finds all the term URLs and labels for a virtual ontology.
	 * 
	 * The select parameters returned are: ?termURL
	 * 
	 * @param verGraph
	 * @return SPARQL engine for all terms.
	 * @throws Exception
	 */
	public static QueryEngineHTTP uriTerms(String verGraph) throws Exception {
		String termSparql = props.getProperty("sparql.uriTerms");
		return ontTermsEngine(verGraph, termSparql);
	}

	/**
	 * This SPARQL finds all the xref terms for a virtual ontology.
	 * 
	 * The select parameters returned are: ?termURL ?termXref
	 * 
	 * @param verGraph
	 * @return SPARQL engine for all OBO terms with an xref property.
	 * @throws Exception
	 */
	public static QueryEngineHTTP xrefTerms(String verGraph) throws Exception {
		String termSparql = props.getProperty("sparql.xrefTerms");
		return ontTermsEngine(verGraph, termSparql);
	}

	/**
	 * This SPARQL finds all the ontologies that contain an xref.
	 * 
	 * The select parameters returned are: ?verGraph
	 * 
	 * @param xrefURL
	 * @return SPARQL engine for all ontology graphs that contain xrefURL.
	 * @throws Exception
	 */
	public static QueryEngineHTTP xrefOntologies(String xrefURL)
			throws Exception {
		String sparql = props.getProperty("sparql.xrefOntologies");
		sparql = sparql.replaceAll("XREF_REGEX", xrefURL);
		return queryEngine(sparql);
	}

}
