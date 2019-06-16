package com.uca.proyectofinalcapas.controller;

import java.util.Date;
import java.util.List;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
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
import com.uca.proyectofinalcapas.repository.AusenciaRepository;
import com.uca.proyectofinalcapas.repository.EmpleadoRepository;




@Controller
public class AusenciaController {
	
	@Autowired
	private AusenciaRepository  ausenciaRepository;
	

	
	@RequestMapping("/saveAusencia")
	public ModelAndView saveAusencia(@ModelAttribute Ausencia ausencia){
		ModelAndView mav = new ModelAndView();
		Ausencia result = ausenciaRepository.save(ausencia);
		if(result != null) mav.addObject("resultado", 1);
		else mav.addObject("resultado", 0);
		mav.addObject("ausencia", result);
		mav.setViewName("ausencia/crearAusencia");
		return mav;
	}
	
	@RequestMapping("/saveAusenciaMed")
	public ModelAndView saveAusenciaMed(@ModelAttribute Ausencia ausencia){
		ModelAndView mav = new ModelAndView();
		Ausencia result = ausenciaRepository.save(ausencia);
		if(result != null) mav.addObject("resultado", 1);
		else mav.addObject("resultado", 0);
		mav.addObject("ausencia", result);
		mav.setViewName("ausencia/crearAusencia");
		return mav;
	}
	
	
	@RequestMapping("/crearAusencia")
	public String crearAusencia(Model model){
		model.addAttribute("today", new Date());
		return "ausencia/crearAusencia";
	}
	
	@RequestMapping("/crearAusenciaMed")
	public String crearAusenciaMed(Model model){
		model.addAttribute("today", new Date());
		return "ausencia/crearAusencia";
	}
	
	
	@RequestMapping("/listadoAucM")
	public ModelAndView listadoAuM(){
		ModelAndView mav = new ModelAndView();
		String tipo = "M";
		List<Ausencia> auc = ausenciaRepository.findBytipo_ausencia(tipo);
		mav.addObject("aucencia", auc);
		mav.setViewName("ausencia/viewAusencia");
		return mav;
	}
	
	@RequestMapping("/listadoAucO")
	public ModelAndView listadAu(){
		ModelAndView mav = new ModelAndView();
		String tipo = "A";
		List<Ausencia> auc = ausenciaRepository.findBytipo_ausencia(tipo);
		mav.addObject("aucencia", auc);
		mav.setViewName("ausencia/viewAusencia");
		return mav;
	}
	
//	@RequestMapping("/saveAusenciaM")
//	public ModelAndView saveEmpleado(@ModelAttribute int id){
//		ModelAndView mav = new ModelAndView();
//		Ausencia result = ausenciaRepository.save(empleado);
//		if(result != null) mav.addObject("resultado", 1);
//		else mav.addObject("resultado", 0);
//		mav.addObject("empleado", result);
//		mav.setViewName("expediente/editarExpediente");
//		return mav;
//	}
	

	
	
}
