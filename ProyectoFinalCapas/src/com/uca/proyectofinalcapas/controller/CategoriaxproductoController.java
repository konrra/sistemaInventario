package com.uca.proyectofinalcapas.controller;

import java.util.LinkedList;
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
import com.uca.proyectofinalcapas.repository.CategoriaxproductoRepository;




@Controller
public class CategoriaxproductoController {
	
	@Autowired
	private CategoriaxproductoRepository categoriaProductoRepository;
	
	@RequestMapping(value="/listadoCategoria", method= RequestMethod.GET)
	public ModelAndView listadoCategoria(){
		ModelAndView mav = new ModelAndView();
		try {
			
			List<Categoriaxproducto> listadoCategoria = categoriaProductoRepository.findAllCategoria();
			int totalCategoria = categoriaProductoRepository.countAllCategoria();
			mav.addObject("colectionResult", listadoCategoria);
			mav.addObject("total", totalCategoria);
			
		}catch (Exception e) {
			mav.addObject("total", 0);
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("categoria/listadoCategoria");
		return mav;
	}
	
	@RequestMapping(value="/editarCategoria", method=RequestMethod.GET)
	public ModelAndView editarCategoria(@RequestParam("id_categoria_x_producto") Integer idCategoria) {
	
		ModelAndView mav = new ModelAndView();
		
		try {
			Categoriaxproducto categoriaxproducto = categoriaProductoRepository.findById(idCategoria);
			mav.addObject("categoriaxproducto", categoriaxproducto);
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("categoria/editarCategoria");
		
		return mav;
	}
	
	@RequestMapping(value="/actualizarCategoria", method=RequestMethod.GET)
	public ModelAndView actCategoria(@ModelAttribute Categoriaxproducto categoriaxproducto) {
		ModelAndView mav = new ModelAndView();
		
		if(StringUtils.isEmpty(categoriaxproducto.getDescripcion())) {
			mav.addObject("error", "Es necesario ingresar los campos obligatorios");
			mav.setViewName("categoria/crearCategoria");
		}else {
			categoriaxproducto.setEstado("A");
			categoriaProductoRepository.save(categoriaxproducto);
			return listadoCategoria();
		}
		
		return mav;
	}
	
	@RequestMapping(value="/crearCategoria", method=RequestMethod.GET)
	public ModelAndView crearCategoria() {
		ModelAndView mav = new ModelAndView();
		List<Categoriaxproducto> comboCategoria = new LinkedList<Categoriaxproducto>();
		try {
			comboCategoria = categoriaProductoRepository.findAllCategoria();
		} catch (Exception e) {
			// TODO: handle exception
		}
	
		mav.addObject("comboCategoria", comboCategoria);
		mav.setViewName("categoria/crearCategoria");
		return mav;
	}
	
	@RequestMapping(value="/eliminarCategoria", method=RequestMethod.GET)
	public ModelAndView eliminarCategoria(@RequestParam("id_categoria_x_producto") Integer id_categoriaxproducto) {
		
		try {
			Categoriaxproducto categoriaxproducto = categoriaProductoRepository.findById(id_categoriaxproducto);
			categoriaxproducto.setEstado("I");
			categoriaProductoRepository.save(categoriaxproducto);
			
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		return listadoCategoria();
		
	}
	
}
