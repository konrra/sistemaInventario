package com.uca.proyectofinalcapas.utilerias;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.time.chrono.JapaneseChronology;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

import com.uca.proyectofinalcapas.configuration.JpaConfiguration;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

/**
 * Servlet implementation class JasperReporServlet
 */
@WebServlet("/JasperReporServlet")
public class JasperReporServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JasperReporServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JasperPrint jasperPrint=null;
		Connection conn = null;
		try {
			
			JpaConfiguration jpaConf = new JpaConfiguration();
			conn = jpaConf.dataSource().getConnection();

			String reportFileName = "facturaSi.jrxml";
			File file = new File("reports/"+reportFileName);
			String reportPath=file.getAbsolutePath();
			String targetFileName=reportFileName.replace(".jrxml", ".pdf");
			JasperReport jasperReport = JasperCompileManager.compileReport(reportPath); 
			jasperPrint = JasperFillManager.fillReport(jasperReport, null, conn);
			ServletOutputStream outputstream = response.getOutputStream();
			ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
			JasperExportManager.exportReportToPdfStream(jasperPrint, byteArrayOutputStream);
			response.setContentType("application/pdf");
			outputstream.write(byteArrayOutputStream.toByteArray());
			response.setHeader("Cache-Control", "max-age=0");
			response.setHeader("Content-Disposition", "attachment; filename=" + targetFileName); 
			outputstream.flush();
			outputstream.close(); 
			conn.close();
		} catch (Exception e ) {
			e.printStackTrace();
		}
	}
}
