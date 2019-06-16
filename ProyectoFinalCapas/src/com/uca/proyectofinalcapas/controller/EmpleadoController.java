package com.uca.proyectofinalcapas.controller;

import java.util.Date;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.AlergiaxEmpleado;
import com.uca.proyectofinalcapas.domain.Ausencia;
import com.uca.proyectofinalcapas.domain.Empleado;
import com.uca.proyectofinalcapas.repository.AlergiaxEmpleadorepository;
import com.uca.proyectofinalcapas.repository.EmpleadoRepository;



@Controller
public class EmpleadoController {
	
	@Autowired
	private EmpleadoRepository  empleadoRepository;
	
	
	@RequestMapping("/verExp")
	public ModelAndView buscarExpediente(@RequestParam("usuario") String usuario){
		ModelAndView mav = new ModelAndView();
		int idUser= empleadoRepository.findByUsername(usuario);
		Empleado empleado = empleadoRepository.findById(idUser);
		mav.addObject("empleado", empleado);
		mav.addObject("usuario", usuario);
		mav.setViewName("expediente/verExpediente");
		return mav;
	}
	
	
	
}
