package com.uca.proyectofinalcapas.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Cliente;
import com.uca.proyectofinalcapas.domain.Factura;
import com.uca.proyectofinalcapas.domain.JasperInputForm;
import com.uca.proyectofinalcapas.repository.ClienteRepository;
import com.uca.proyectofinalcapas.utilerias.JasperReportDAO;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

@Controller
public class FacturaController {

	@Autowired
	private ClienteRepository clienteRepository;

	@RequestMapping("/inicioFactura")
	public ModelAndView inicioFactura(){
		ModelAndView mav = new ModelAndView();

		mav.setViewName("facturacion/inicioReporte");
		return mav;
	}


	@RequestMapping("/crearFactura")
	public ModelAndView crearFactura(){
		ModelAndView mav = new ModelAndView();
		Factura factura = new Factura();
		factura.setFecha(new Date());
		List<Cliente> clientes = clienteRepository.findAll();
		mav.addObject("comboCliente", clientes);
		mav.addObject("factura", factura);
		mav.setViewName("facturacion/crearFactura");
		return mav;
	}



	@ModelAttribute("jasperRptFormats")
	public ArrayList getJasperRptFormats() {
		ArrayList<String> jasperRptFormats = new ArrayList<String>();
		jasperRptFormats.add("Html");
		jasperRptFormats.add("PDF");

		return jasperRptFormats;
	}

	@RequestMapping(value = "/loadJasper")
	public String loadSurveyPg(
			@ModelAttribute("jasperInputForm") JasperInputForm jasperInputForm,	Model model) {
		model.addAttribute("JasperInputForm", jasperInputForm);

		return "loadJasper";
	}

	@RequestMapping(value = "/generateReport")
	public String generateReport(
			@Valid @ModelAttribute("jasperInputForm") JasperInputForm jasperInputForm,
			BindingResult result, Model model, HttpServletRequest request,
			HttpServletResponse response) throws JRException, IOException,NamingException {

		if (result.hasErrors()) {
			System.out.println("validation error occured in jasper input form");
			return "loadJasper";

		}

		String reportFileName = "Fcomercial";
		JasperReportDAO jrdao = new JasperReportDAO();

		Connection conn = null;

		try {
			conn = jrdao.getConnection();

			String rptFormat = jasperInputForm.getRptFmt();

			HashMap<String, Object> hmParams = new HashMap<String, Object>();


			JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

			if (rptFormat.equalsIgnoreCase("html")) {

				JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, hmParams, conn);
				jrdao.generateReportHtml(jasperPrint, request, response); // For
				// HTML
				// report

			}

			else if (rptFormat.equalsIgnoreCase("pdf")) {

				jrdao.generateReportPDF(response, hmParams, jasperReport, conn); // For
				// PDF
				// report

			}

		} catch (SQLException sqlExp) {
			System.out.println("Exception::" + sqlExp.toString());
		} finally {
			if (conn != null) {
				try {
					conn.close();
					conn = null;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		return null;
	}


}