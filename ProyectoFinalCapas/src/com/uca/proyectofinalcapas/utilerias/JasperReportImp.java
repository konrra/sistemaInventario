package com.uca.proyectofinalcapas.utilerias;
import java.io.File;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

// import com.mycompany.helper.* ;
// import com.mycompany.dbi.*;

public class JasperReportImp {
	
	public static void main(String[] args) {
		HashMap hm = null;
		// System.out.println("Usage: ReportGenerator ....");

		try {
			System.out.println("Start ....");
		    File jasperFileName = new File("facturaSi.jasper");
		    File jrxmlFileName = new File("facturaSi.jrxml");
		    String pdfFileName = "facturaSi.pdf";
//		    URL in = this.getClass().getResource("facturaSi.jasper");

			JasperCompileManager.compileReportToFile(jrxmlFileName.getPath(), jasperFileName.getPath());

			String dbUrl = "jdbc:oracle:thin:@localhost:1521:SistemaInventario";
			String dbDriver = "oracle.jdbc.driver.OracleDriver";
			String dbUname = "postgres";
			String dbPwd = "root";

			// Load the JDBC driver
			Class.forName(dbDriver);
			// Get the connection
			Connection conn = DriverManager.getConnection(dbUrl, dbUname, dbPwd);

			// Create arguments
			// Map params = new HashMap();
			hm = new HashMap();
			hm.put("ID", "123");
			hm.put("DATENAME", "April 2006");

			// Generate jasper print
			JasperPrint jprint = (JasperPrint) JasperFillManager.fillReport(jasperFileName.getPath(), hm, conn);

			// Export pdf file
			JasperExportManager.exportReportToPdfFile(jprint, pdfFileName);

			System.out.println("Done exporting reports to pdf");

		} catch (Exception e) {
			System.out.print("Exceptiion" + e);
		}
	}
}