package org.ncbo.stanford.mappings;

import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.sparql.engine.http.QueryEngineHTTP;
import com.hp.hpl.jena.sparql.resultset.ResultSetMem;

/**
 * A class for interaction with the BioPortal triple store.
 * 
 * @author dlweber
 * 
 */
public class Bioportal4store {

	private static Logger log = LogManager.getLogger(Bioportal4store.class
			.getName());

	private static Properties props = MappingProperties.getProps();
	private String service = props.getProperty("sparql.service");
	private String apikey = props.getProperty("sparql.apiKey");

	/**
	 * @return the triple store SPARQL URL
	 */
	public String getService() {
		return service;
	}

	/**
	 * @param service
	 *            the triple store SPARQL URL (endpoint)
	 */
	public void setService(String service) {
		this.service = service;
		log.info("triple store service: {}", this.service);
	}

	/**
	 * @return the apikey - An API key for access to BioPortal REST services.
	 */
	public String getApikey() {
		return apikey;
	}

	/**
	 * @param apikey
	 *            - An API key for access to BioPortal REST services.
	 */
	public void setApikey(String apikey) {
		this.apikey = apikey;
		log.info("triple store API key: {}", this.apikey);
	}

	/**
	 * Create an instance with the default triple store service and API key. Use
	 * the defaults in Mapping.properties.
	 */
	public Bioportal4store() {
		super();
		log.info("triple store service: {}", this.service);
		log.info("triple store API key: {}", this.apikey);
	}

	/**
	 * Create an instance with the default triple store service.
	 * 
	 * @param apikey
	 *            - An API key for access to BioPortal REST services.
	 */
	public Bioportal4store(String apikey) {
		setApikey(apikey);
	}

	/**
	 * @param service
	 *            - the triple store SPARQL URL (endpoint), for example:
	 *            "http://sparql.bioontology.org/sparql/"
	 * @param apikey
	 *            - An API key for access to BioPortal REST services.
	 */
	public Bioportal4store(String service, String apikey) {
		setService(service);
		setApikey(apikey);
	}

	/**
	 * Query the Bioportal triple store for the number of virtual ontologies.
	 * 
	 * @return the number of virtual ontologies or -1
	 * @throws Exception
	 */
	public int ontologyCount() throws Exception {
		QueryEngineHTTP qEngine = null;
		String query = null;
		ResultSet results = null;
		QuerySolution solution = null;
		RDFNode ontCount = null;
		int count = -1;
		try {
			query = "PREFIX def: <http://bioportal.bioontology.org/metadata/def/> "
					+ "PREFIX omv: <http://omv.ontoware.org/2005/05/ontology#> "
					+ "SELECT DISTINCT (count(?virtualID) as ?count) "
					+ "WHERE { ?virtualID a def:VirtualOntology . }";
			qEngine = queryEngine(query);
			results = qEngine.execSelect();
			//
			// TODO: EXPLORE converting results to data structure...
			//
			ResultSetMem rsMem = new ResultSetMem(results);
			while (rsMem.hasNext()) {
				solution = rsMem.nextSolution();
				ontCount = solution.get("count");
				count = ontCount.asLiteral().getInt();
			}
			//
			//
			// for (; results.hasNext();) {
			// solution = results.nextSolution();
			// ontCount = solution.get("count");
			// count = ontCount.asLiteral().getInt();
			// }
		} catch (Exception e) {
			throw e;
		} finally {
			qEngine.close();
		}
		return count;
	}

	/**
	 * Get results of a SPARQL query of the triple store.
	 * 
	 * @param queryString
	 *            - a SPARQL query.
	 * @return an HTTP query engine (QueryEngineHTTP)
	 * @throws Exception
	 */
	public QueryEngineHTTP queryEngine(String queryString) throws Exception {
		// Cannot add an API key parameter to the QueryExecution instance.
		// QueryExecution qExec = QueryExecutionFactory.sparqlService(service,
		// queryString);
		Query query = QueryFactory.create(queryString);
		QueryEngineHTTP qEngine = QueryExecutionFactory.createServiceRequest(
				service, query);
		qEngine.addParam("apikey", apikey);
		qEngine.addParam("soft-limit", "-1");
		qEngine.addParam("-DentityExpansionLimit", "1500000");
		// 4store doesn't support timeout?
		// qEngine.setTimeout(45000);
		qEngine.addParam("timeout", "45000"); // 45 sec
		return qEngine;
	}

	// TODO: Add a method to get JSON responses
	// Try using: ResultSetFactory.fromJSON(...) on a direct HTTP request.

}
