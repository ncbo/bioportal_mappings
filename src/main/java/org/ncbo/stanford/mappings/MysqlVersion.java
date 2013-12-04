package org.ncbo.stanford.mappings;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * @author dlweber
 * 
 */
public class MysqlVersion {

	private static Logger log = LogManager.getLogger(UmlsMrmapMappings.class
			.getName());

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Connection con = null;
		Statement st = null;
		ResultSet rs = null;

		Properties props = MappingProperties.getProps();
		String url = props.getProperty("umls.db.url");
		String user = props.getProperty("umls.db.user");
		String passwd = props.getProperty("umls.db.passwd");

		try {
			con = DriverManager.getConnection(url, user, passwd);
			st = con.createStatement();
			rs = st.executeQuery("SELECT VERSION()");

			log.info(url);
			if (rs.next()) {
				log.info(rs.getString(1));
			}

		} catch (SQLException ex) {
			log.fatal(ex.getMessage());

		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (st != null) {
					st.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException ex) {
				log.warn(ex.getMessage());
			}
		}
	}
}
