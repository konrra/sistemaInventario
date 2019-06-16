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
public class ExpedienteController {

	@Autowired
	private AlergiaxEmpleadorepository  alergiaRepository;
	
	@RequestMapping("/crearExpMed")
	public String expMedico(){
		return "expediente/crearExpedienteMedico";
	}
	
	@RequestMapping("/saveExpedienteMed")
	public ModelAndView saveAlergia(@ModelAttribute AlergiaxEmpleado exp){
		ModelAndView mav = new ModelAndView();
		AlergiaxEmpleado ale = alergiaRepository.save(exp);
		if(ale != null) mav.addObject("resultado", 1);
		else mav.addObject("resultado", 0);
		mav.addObject("exp", ale);
		mav.setViewName("expediente/crearExpedienteMedico");
		return mav;
	}
	
	@RequestMapping("/listadoExp")
	public ModelAndView listadoExp(@RequestParam("id_empleado") Integer id){
		ModelAndView mav = new ModelAndView();
		List<AlergiaxEmpleado> expe = alergiaRepository.findById(id);
//		Integer total = empleadoRepository.countBySapellidoStartingWith(criteria);
		mav.addObject("exp", expe);
//		mav.addObject("total", total);
		mav.setViewName("expediente/viewExp");
		return mav;
	}
	
	@RequestMapping("/editarExpMed")
	public ModelAndView indexEditar(@RequestParam("idexp") Integer id){
		ModelAndView mav = new ModelAndView();
		 AlergiaxEmpleado exped = alergiaRepository.findOne(id);
		mav.addObject("exp",exped);
		mav.setViewName("expediente/editarExpedienteMedico");
		return mav;
	}
}
