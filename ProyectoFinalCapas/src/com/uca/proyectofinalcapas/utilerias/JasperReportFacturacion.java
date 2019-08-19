package com.uca.proyectofinalcapas.utilerias;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

public class JasperReportFacturacion {

//	public void generadorReporte() {
	public static void main(String[] args) {

		// Compile jrxml file.
		JasperReport jasperReport;
		try {
			File file = new File("reports/facturaSi.jrxml");
			String absolutePath = file.getAbsolutePath();
			
			
			jasperReport = JasperCompileManager.compileReport(absolutePath);
			
			// Parameters for report
			Map<String, Object> parameters = new HashMap<String, Object>();

			// DataSource
			// This is simple example, no database.
			// then using empty datasource.
			JRDataSource dataSource = new JREmptyDataSource();

			JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,parameters, dataSource);


			// Make sure the output directory exists.
			File outDir = new File("C:/jasperoutput");
			outDir.mkdirs();

			// Export to PDF.
			JasperExportManager.exportReportToPdfFile(jasperPrint,"C:/jasperoutput/StyledTextReport.pdf");

			System.out.println("Done!");
		} catch (JRException e) {
			e.printStackTrace();
		}

	}
	
}
