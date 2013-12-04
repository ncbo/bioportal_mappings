package org.ncbo.stanford.mappings;

import java.net.HttpURLConnection;
import java.net.URL;

/**
 * A simple class to create and validate a bioportal user's API key.
 * 
 * @author dlweber
 * 
 */
public class BioportalApiKey {

	/**
	 * An API key for a bioportal user.
	 */
	private String apiKey = null;

	/**
	 * @param newApiKey
	 *            - a string representation of an API key for access to
	 *            bioportal REST services.
	 * @throws Exception
	 *             - when an API key is invalid.
	 */
	public BioportalApiKey(String newApiKey) throws Exception {
		setApiKey(newApiKey);
	}

	/**
	 * @return - a string representation of an API key for access to bioportal
	 *         REST services.
	 */
	public String getApiKey() {
		return apiKey;
	}

	/**
	 * @param newApiKey
	 *            - a string representation of an API key for access to
	 *            bioportal REST services.
	 * @throws Exception
	 *             - when an API key is invalid.
	 */
	public void setApiKey(String newApiKey) throws Exception {
		apiKey = newApiKey;
		if (!validateApiKey()) {
			throw new Exception("Invalid API key.");
		}

	}

	/**
	 * Query rest.bioontology.org to validate an API key.
	 * 
	 * The REST server authentication URL is:
	 * http://rest.bioontology.org/bioportal/auth?apikey=""&userapikey=""
	 * 
	 * The apikey="" is a valid API key (required for any request on the REST
	 * service). The userapikey="" is the API key to be validated by this
	 * request.
	 * 
	 * @return true for any response from the rest server that validates an API
	 *         key, false otherwise.
	 * @throws Exception
	 */
	public boolean validateApiKey() throws Exception {
		if (apiKey == null) {
			return false;
		}
		// Construct a rest query to validate an API key.
		StringBuilder restQuery = new StringBuilder();
		restQuery.append("http://rest.bioontology.org/bioportal/auth?");
		restQuery.append(String.format("apikey=%s", apiKey));
		restQuery.append(String.format("&userapikey=%s", apiKey));
		// Submit query and check the HTTP response.
		URL restURL = new URL(restQuery.toString());
		HttpURLConnection conn = (HttpURLConnection) restURL.openConnection();
		conn.setConnectTimeout(60 * 1000);
		conn.setReadTimeout(60 * 1000);
		switch (conn.getResponseCode()) {
		// List all the 'valid' HTTP responses
		case HttpURLConnection.HTTP_ACCEPTED:
		case HttpURLConnection.HTTP_OK:
			return true;
		default:
			return false;
		}
		// Maybe parse the XML response to be more certain about valid keys.
		// try {
		// InputStream iStream = conn.getInputStream();
		// /* Now read the retrieved document from the stream. */
		// } finally {
		// iStream.close();
		// }
	}
}
