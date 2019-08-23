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

import com.uca.proyectofinalcapas.domain.Lugar;
import com.uca.proyectofinalcapas.repository.LugarRepository;



@Controller
public class LugarController {
	
	@Autowired
	private LugarRepository lugarRepository;
	
	
	@RequestMapping(value="/listadoLugar", method= RequestMethod.GET)
	public ModelAndView listadoLugar(){
		ModelAndView mav = new ModelAndView();
		try {

			List<Lugar> listadoLugar = lugarRepository.findAllLugar();
			int totalLugar = lugarRepository.countAllLugar();

			mav.addObject("colectionResult", listadoLugar);
			mav.addObject("total", totalLugar);

		}catch (Exception e) {
			mav.addObject("total", 0);
		}

		mav.setViewName("lugar/listadoLugar");
		return mav;
	}
	
	
	@RequestMapping(value="/editarLugar", method=RequestMethod.GET)
	public ModelAndView editarLugar(@RequestParam("id_lugar") Integer idLugar) {
		ModelAndView mav = new ModelAndView();
		
		try {
			Lugar lugar = lugarRepository.findById(idLugar);
			mav.addObject("lugar", lugar);
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("lugar/editarLugar");
		
		return mav;
	}
	
	
	@RequestMapping(value="/actualizarLugar", method=RequestMethod.GET)
	public ModelAndView actLugar(@ModelAttribute Lugar lugar) {
		ModelAndView mav = new ModelAndView();
		if(StringUtils.isEmpty(lugar.getDescripcion())) {
			mav.addObject("error", "Es necesario ingresar los campos obligatorios");
			mav.setViewName("lugar/crearLugar");
		}else {
			try {
				lugarRepository.save(lugar);
			} catch (Exception e) {
				System.out.println(e.getStackTrace());
				mav.addObject("error", "Ocurri&oacute; un error al guardar la informaci&oacute;n");
				mav.setViewName("lugar/crearLugar");
			}
			
			return listadoLugar();
		}

		return mav;
	}
	
	@RequestMapping(value="/crearLugar", method=RequestMethod.GET)
	public ModelAndView crearLugar() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("lugar/crearLugar");
		return mav;
	}
	
	@RequestMapping(value="/eliminarLugar", method=RequestMethod.GET)
	public ModelAndView eliminarLugar(@RequestParam("id_lugar") Integer id_lugar) {
		
		try {
			Lugar lugar = lugarRepository.findById(id_lugar);
//			lugar.setEstado("I");
			lugarRepository.save(lugar);
			
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		return listadoLugar();
		
	}
	
}
