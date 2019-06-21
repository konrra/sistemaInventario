package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Cliente;
import com.uca.proyectofinalcapas.repository.ClienteRepository;




@Controller
public class ClienteController {
	
	@Autowired
	private ClienteRepository clienteRepository;
	
	
	@RequestMapping(value="/listadoCliente", method= RequestMethod.GET)
	public ModelAndView listadoCliente(){
		ModelAndView mav = new ModelAndView();
		try {
			
			List<Cliente> listadoCLientes = clienteRepository.findAllCliente();
			int totalCliente = clienteRepository.countAllCliente();
			mav.addObject("colectionResult", listadoCLientes);
			mav.addObject("total", totalCliente);
		}catch (Exception e) {
			mav.addObject("total", 0);
		}
		
		mav.setViewName("cliente/listadoCliente");
		return mav;
	}
	
	@RequestMapping(value="/editarCliente", method=RequestMethod.GET)
	public ModelAndView editarCliente(@RequestParam("id_cliente") Integer idCliente) {
	
		ModelAndView mav = new ModelAndView();
		
		try {
			Cliente cliente = clienteRepository.findById(idCliente);
			mav.addObject("cliente", cliente);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		mav.setViewName("cliente/editarCliente");
		
		return mav;
	}
	
	@RequestMapping(value="/actualizarCliente", method=RequestMethod.GET)
	public ModelAndView actCliente(@ModelAttribute Cliente cliente) {
		ModelAndView mav = new ModelAndView();
		Cliente result = clienteRepository.save(cliente);
		if(result != null ) {
			return listadoCliente();
		}else {
			mav.setViewName("cliente/editarCliente");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/crearCliente", method=RequestMethod.GET)
	public ModelAndView crearCliente() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cliente/crearCliente");
		return mav;
	}
	
	@RequestMapping(value="/eliminarCliente", method=RequestMethod.GET)
	public ModelAndView eliminarCliente(@RequestParam("id_cliente") Integer id_cliente) {
		
		try {
			Cliente cliente = clienteRepository.findById(id_cliente);
			cliente.setEstado("I");
			clienteRepository.save(cliente);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return listadoCliente();
		
	}
	
}
