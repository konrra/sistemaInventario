package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Categoriaxproducto;
import com.uca.proyectofinalcapas.domain.Cliente;
import com.uca.proyectofinalcapas.domain.Lugar;
import com.uca.proyectofinalcapas.domain.MovProducto;
import com.uca.proyectofinalcapas.repository.ClienteRepository;
import com.uca.proyectofinalcapas.repository.LugarRepository;
import com.uca.proyectofinalcapas.repository.MovProductoRepository;




@Controller
public class MovProductoController {
	
	@Autowired
	private MovProductoRepository movProductoRepository;
	
	@Autowired
	private LugarRepository lugarRepository;
	
	
	
	
	
//	@RequestMapping(value="/listadoEntrada", method= RequestMethod.GET)
//	public ModelAndView listadoCliente(){
//		ModelAndView mav = new ModelAndView();
//		try {
//			
//			List<Cliente> listadoCLientes = clienteRepository.findAllCliente();
//			int totalCliente = clienteRepository.countAllCliente();
//			mav.addObject("colectionResult", listadoCLientes);
//			mav.addObject("total", totalCliente);
//		}catch (Exception e) {
//			mav.addObject("total", 0);
//			System.out.println(e.getStackTrace());
//		}
//		
//		mav.setViewName("cliente/listadoCliente");
//		return mav;
//	}
	
////	metodo que llama al formulario de cliente 
//	@RequestMapping(value="/editarEntrada", method=RequestMethod.GET)
//	public ModelAndView editarCliente(@RequestParam("id_cliente") Integer idCliente) {
//	
//		ModelAndView mav = new ModelAndView();
//		
//		try {
//			Cliente cliente = clienteRepository.findById(idCliente);
//			mav.addObject("cliente", cliente);
//		} catch (Exception e) {
//			System.out.println(e.getStackTrace());
//		}
//		
//		mav.setViewName("cliente/editarCliente");
//		
//		return mav;
//	}
	
	
//	metodo que actualiza o crea un cliente 
	@RequestMapping(value="/actualizarEntrada", method=RequestMethod.GET)
	public ModelAndView actCliente(@ModelAttribute MovProducto movProducto) {
		
		
		Lugar lugar = new Lugar();
		lugar.setId_lugar(movProducto.getId_lugar());
		movProducto.setLugar(lugar);
		movProductoRepository.save(movProducto);
		
		ModelAndView mav = new ModelAndView();

		return mav;
	}
	
	@RequestMapping(value="/crearEntrada", method=RequestMethod.GET)
	public ModelAndView crearCliente() {
		
		List<Lugar> comboLugar = lugarRepository.findAllLugar();
		ModelAndView mav = new ModelAndView();
		mav.addObject("comboLugar", comboLugar);
		
		mav.setViewName("movProducto/crearEntrada");
		return mav;
	}
	
//	@RequestMapping(value="/eliminarCliente", method=RequestMethod.GET)
//	public ModelAndView eliminarCliente(@RequestParam("id_cliente") Integer id_cliente) {
//		
//		try {
//			Cliente cliente = clienteRepository.findById(id_cliente);
//			cliente.setEstado("I");
//			clienteRepository.save(cliente);
//			
//		} catch (Exception e) {
//			System.out.println(e.getStackTrace());
//		}
//		
//		return listadoCliente();
//		
//	}
	
}
