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

import com.uca.proyectofinalcapas.domain.Rol;
import com.uca.proyectofinalcapas.repository.RolRepository;

@Controller
public class RolController {
	@Autowired
	private RolRepository RolRepository;
	
	@RequestMapping(value="/listadoRol", method= RequestMethod.GET)
	public ModelAndView listadoRol(){
		ModelAndView mav = new ModelAndView();
		try {
			
			List<Rol> listadoRol = RolRepository.findAllRol();
			int totalRol = RolRepository.countAllRol();
			
			mav.addObject("listRol", listadoRol);
			mav.addObject("total", totalRol);
		}catch (Exception e) {
			mav.addObject("total", 0);
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("rol/ListadoRol");
		return mav;
	}
	
	//crear rol
		@RequestMapping(value="/crearRol", method=RequestMethod.GET)
		public ModelAndView crearRol() {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("rol/crearRol");
			return mav;
		}
		
//		metodo que actualiza o crea un cliente 
		@RequestMapping(value="/actualizarRol", method=RequestMethod.GET)
		public ModelAndView actRol(@ModelAttribute Rol rol) {
			ModelAndView mav = new ModelAndView();
			if(StringUtils.isEmpty(rol.getDescripcion())) {
				mav.addObject("error", "Es necesario ingresar una descripcion al rol");
				mav.setViewName("rol/editarRol");
			}else {
				RolRepository.save(rol);
				return listadoRol();
			}

			return mav;
		}
	
	@RequestMapping(value="/editarRol", method=RequestMethod.GET)
	public ModelAndView editarUsuario(@RequestParam("id_rol") Integer idRol) {
	
		ModelAndView mav = new ModelAndView();
		
		try {
			Rol rol = RolRepository.findRol(idRol);
			mav.addObject("rol", rol);
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("rol/editarRol");
		
		return mav;
	}

}//cierre de clase


	