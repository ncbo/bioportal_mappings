package org.ncbo.stanford.mappings;

import java.util.GregorianCalendar;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/**
 * Utility class for loom mappings.
 * 
 * @author dlweber
 */
public class MappingUtils {

	static final String xmlDateToday() {
		String mapDateXML = null;
		try {
			DatatypeFactory factory = DatatypeFactory.newInstance();
			GregorianCalendar gcal = new GregorianCalendar();
			XMLGregorianCalendar xgcal = factory.newXMLGregorianCalendar(gcal);
			xgcal.setTime(0, 0, 0, 0);
			mapDateXML = xgcal.normalize().toXMLFormat();
		} catch (DatatypeConfigurationException e) {
			e.printStackTrace();
		}
		// String mapDateFormat = "date \"%s\"^^xsd:dateTime";
		// String mapDate = String.format(mapDateFormat, mapDateXML);
		// return mapDate;
		return mapDateXML;
	}

}
