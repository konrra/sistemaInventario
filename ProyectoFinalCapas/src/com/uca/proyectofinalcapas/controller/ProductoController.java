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
import com.uca.proyectofinalcapas.domain.Producto;
import com.uca.proyectofinalcapas.repository.CategoriaxproductoRepository;
import com.uca.proyectofinalcapas.repository.ProductoRepository;




@Controller
public class ProductoController {
	
	@Autowired
	private ProductoRepository productoRepository;
	
	@Autowired
	private CategoriaxproductoRepository categoriaProductoRepository;
	
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
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("producto/listadoProducto");
		return mav;
	}
	
	@RequestMapping(value="/editarProducto", method=RequestMethod.GET)
	public ModelAndView editarProducto(@RequestParam("id_producto") Integer idProducto) {
	
		ModelAndView mav = new ModelAndView();
		
		try {
			Producto producto = productoRepository.findById(idProducto);
			List<Categoriaxproducto> comboCategoria = categoriaProductoRepository.findAllCategoria();
			mav.addObject("comboCategoria", comboCategoria);
			mav.addObject("producto", producto);
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("producto/editarProducto");
		
		return mav;
	}
	
	
	
	@RequestMapping(value="/actualizarProducto", method=RequestMethod.GET)
	public ModelAndView actProducto(@ModelAttribute Producto producto) {
		ModelAndView mav = new ModelAndView();
		if(StringUtils.isEmpty(producto.getNombre()) || StringUtils.isEmpty(producto.getId_categoria_x_producto())) {
			List<Categoriaxproducto> comboCategoria = categoriaProductoRepository.findAllCategoria();
			mav.addObject("comboCategoria", comboCategoria);
			mav.addObject("error", "Es necesario ingresar los campos obligatorios");
			mav.setViewName("producto/crearProducto");
		}else {
			Categoriaxproducto cat = new Categoriaxproducto();
			cat.setId_categoria_x_producto(producto.getId_categoria_x_producto());
			producto.setCategoriaxproducto(cat);
			productoRepository.save(producto);
			return listadoProducto();
		}

		return mav;
	}
	
	
	@RequestMapping(value="/crearProducto", method=RequestMethod.GET)
	public ModelAndView crearProducto() {
		ModelAndView mav = new ModelAndView();
		List<Categoriaxproducto> comboCategoria = categoriaProductoRepository.findAllCategoria();
		mav.addObject("comboCategoria", comboCategoria);
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
			System.out.println(e.getStackTrace());
		}
		
		return listadoProducto();
		
	}
	
}
