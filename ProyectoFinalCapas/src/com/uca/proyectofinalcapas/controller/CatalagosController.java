package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.AlergiaxEmpleado;
import com.uca.proyectofinalcapas.domain.Empleado;
import com.uca.proyectofinalcapas.repository.AlergiaxEmpleadorepository;

@Controller
public class CatalagosController {

	@Autowired
	private AlergiaxEmpleadorepository  alergiaRepository;
	
	@RequestMapping("/indexCat")
	public String indexCat(){
		return "mantenimientos/IndexCatalogos";
	}
	
	@RequestMapping("/indexAdmin")
	public String indexAdmin(){
		return "indexAdmin";
	}
	

}
