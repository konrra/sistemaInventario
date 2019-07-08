package com.uca.proyectofinalcapas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FacturaController {

	@RequestMapping("/inicioFactura")
	public ModelAndView inicioFactura(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("facturacion/inicioReporte");
		return mav;
	}
}