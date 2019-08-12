package com.uca.proyectofinalcapas.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Cliente;
import com.uca.proyectofinalcapas.domain.Factura;
import com.uca.proyectofinalcapas.repository.ClienteRepository;

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
}