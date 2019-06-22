package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Categoriaxproducto;
import com.uca.proyectofinalcapas.domain.Producto;
import com.uca.proyectofinalcapas.repository.ProductoRepository;




@Controller
public class ProductoController {
	
	@Autowired
	private ProductoRepository productoRepository;
	
	
	@RequestMapping(value="/listadoProducto", method= RequestMethod.GET)
	public ModelAndView listadoProducto(){
		ModelAndView mav = new ModelAndView();
		try {
			
			List<Producto> listadoProducto = productoRepository.findAllProduct();
			int totalProducto = productoRepository.countAllProducto();
			
			mav.addObject("colectionResult", listadoProducto);
			mav.addObject("total", totalProducto);
			
		}catch (Exception e) {
			mav.addObject("total", 0);
		}
		
		mav.setViewName("producto/listadoProducto");
		return mav;
	}
	
	@RequestMapping(value="/editarProducto", method=RequestMethod.GET)
	public ModelAndView editarProducto(@RequestParam("id_producto") Integer idProducto) {
	
		ModelAndView mav = new ModelAndView();
		
		try {
			Producto producto = productoRepository.findById(idProducto);
			mav.addObject("producto", producto);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		mav.setViewName("producto/editarProducto");
		
		return mav;
	}
	
	@RequestMapping(value="/actualizarProducto", method=RequestMethod.GET)
	public ModelAndView actProducto(@ModelAttribute Producto producto) {
		ModelAndView mav = new ModelAndView();
		Producto result = productoRepository.save(producto);
		if(result != null ) {
			return listadoProducto();
		}else {
			mav.setViewName("producto/editarProducto");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/crearProducto", method=RequestMethod.GET)
	public ModelAndView crearProducto() {
		ModelAndView mav = new ModelAndView();
//		List<Categoriaxproducto> comboCategoria = productoRepository.findAllCategoriaProd();
//		mav.addObject("comboCategoria", comboCategoria);
		mav.setViewName("producto/crearProducto");
		return mav;
	}
	
	@RequestMapping(value="/eliminarProducto", method=RequestMethod.GET)
	public ModelAndView eliminarProducto(@RequestParam("id_producto") Integer id_producto) {
		
		try {
			Producto producto = productoRepository.findById(id_producto);
			producto.setEstado("I");
			productoRepository.save(producto);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return listadoProducto();
		
	}
	
}
