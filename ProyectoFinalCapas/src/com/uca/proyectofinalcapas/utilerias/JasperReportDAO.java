package com.uca.proyectofinalcapas.utilerias;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.uca.proyectofinalcapas.configuration.JpaConfiguration;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.export.HtmlExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleHtmlExporterOutput;
import net.sf.jasperreports.export.SimpleHtmlReportConfiguration;

public class JasperReportDAO {


public Connection getConnection(){
	Connection conn=null;
	
	JpaConfiguration jpaConf = new JpaConfiguration();
	try {
		conn=jpaConf.dataSource().getConnection();
	} catch (SQLException e) {
		System.out.println("Error: "+e.getMessage());
		e.printStackTrace();
	}
	
	return conn;
}




public JasperReport getCompiledFile(String fileName, HttpServletRequest request) throws JRException {
	System.out.println("path " + request.getSession().getServletContext().getRealPath("/reportes/" + fileName + ".jasper"));
	File reportFile = new File( request.getSession().getServletContext().getRealPath("/reportes/" + fileName + ".jasper"));
	// If compiled file is not found, then compile XML template
	if (!reportFile.exists()) {
	           JasperCompileManager.compileReportToFile(request.getSession().getServletContext().getRealPath("/WebContent/WEB-INF/reportes/" + fileName + ".jrxml"),
	        		   request.getSession().getServletContext().getRealPath("/WebContent/WEB-INF/reportes/" + fileName + ".jasper"));
	    }
    	JasperReport jasperReport = (JasperReport) JRLoader.loadObjectFromFile(reportFile.getPath());
	   return jasperReport;
	} 


	public void generateReportHtml( JasperPrint jasperPrint, HttpServletRequest req, HttpServletResponse resp) throws IOException, JRException {
		 HtmlExporter exporter=new HtmlExporter();
		 List<JasperPrint> jasperPrintList = new ArrayList<JasperPrint>();
		 jasperPrintList.add(jasperPrint);
		 exporter.setExporterInput(SimpleExporterInput.getInstance(jasperPrintList));
		 exporter.setExporterOutput( new SimpleHtmlExporterOutput(resp.getWriter()));
		 SimpleHtmlReportConfiguration configuration =new SimpleHtmlReportConfiguration();
		 exporter.setConfiguration(configuration);
		  exporter.exportReport();

	}
	

	public void generateReportPDF (HttpServletResponse resp, Map parameters, JasperReport jasperReport, Connection conn)throws JRException, NamingException, SQLException, IOException {
		byte[] bytes = null;
		bytes = JasperRunManager.runReportToPdf(jasperReport,parameters,conn);
		resp.reset();
		resp.resetBuffer();
		resp.setContentType("application/pdf");
		resp.setContentLength(bytes.length);
		ServletOutputStream ouputStream = resp.getOutputStream();
		ouputStream.write(bytes, 0, bytes.length);
		ouputStream.flush();
		ouputStream.close();
	} 

	
	
}
