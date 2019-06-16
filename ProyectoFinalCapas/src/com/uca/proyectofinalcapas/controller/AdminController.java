package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.AlergiaxEmpleado;
import com.uca.proyectofinalcapas.domain.Empleado;
import com.uca.proyectofinalcapas.repository.AlergiaxEmpleadorepository;
import com.uca.proyectofinalcapas.repository.EmpleadoRepository;




@Controller
public class AdminController {
	
	@Autowired
	private EmpleadoRepository  empleadoRepository;
	
	
	@RequestMapping("/crearExp")
	public String init2(){
		return "expediente/crearExpediente";
	}
	
	
	@RequestMapping("/saveEmpleado")
	public ModelAndView saveEmpleado(@ModelAttribute Empleado empleado){
		ModelAndView mav = new ModelAndView();
		Empleado result = empleadoRepository.save(empleado);
		if(result != null) mav.addObject("resultado", 1);
		else mav.addObject("resultado", 0);
		mav.addObject("empleado", result);
		mav.setViewName("expediente/editarExpediente");
		return mav;
	}
	
	@RequestMapping("/listadoEmp")
	public ModelAndView listadoEmp(){
		ModelAndView mav = new ModelAndView();
		List<Empleado> empleado = empleadoRepository.findAllEmp();
//		Integer total = empleadoRepository.countBySapellidoStartingWith(criteria);
		mav.addObject("empleado", empleado);
//		mav.addObject("total", total);
		mav.setViewName("expediente/viewEmpleado");
		return mav;
	}
	
	@RequestMapping("/editarExp")
	public ModelAndView indexEditar(@RequestParam("id_empleado") Integer id_empleado){
		ModelAndView mav = new ModelAndView();
		Empleado findOne = empleadoRepository.findOne(id_empleado);
		mav.addObject("empleado", empleadoRepository.findOne(id_empleado));
		mav.setViewName("expediente/editarExpediente");
		return mav;
	}
}
