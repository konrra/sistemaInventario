package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Producto;
import com.uca.proyectofinalcapas.domain.Stock;
import com.uca.proyectofinalcapas.domain.Usuario;
import com.uca.proyectofinalcapas.repository.ProductoRepository;
import com.uca.proyectofinalcapas.repository.StockRepository;
import com.uca.proyectofinalcapas.repository.UserRepository;

@Controller
public class StockController {
	
	@Autowired
	private StockRepository stockRepository;
	
	@Autowired
	private ProductoRepository productoRepository;
	
	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value="/listadoStock", method= RequestMethod.GET)
	public ModelAndView listadoStock(){
		ModelAndView mav = new ModelAndView();
		try {
			
			
			List<Stock> listadoStock = stockRepository.findAllStock();
			
			for(int i=0; i<listadoStock.size(); i++)
			{
				Stock s = listadoStock.get(i);
				
				Usuario u = new Usuario();
				
//				if(s.getId_usuario()*1>=0) {
//					 u = userRepository.findByIdUser(s.getId_usuario());
//				}else {
//					 u = userRepository.findByIdUser(0);
//				}
				try {
						u = userRepository.findByIdUser(s.getId_usuario());
					}
					catch(Exception e) {
						u = userRepository.findByIdUser(0);
					}
				
				Producto p = productoRepository.findById(s.getId_producto());
				
				s.setProducto(p);
				s.setUsuario(u);
				
				listadoStock.set(i, s);
				
			}
			
			int totalStock = stockRepository.countAll();
			mav.addObject("colectionResult", listadoStock);
			mav.addObject("total", totalStock);
		}catch (Exception e) {
			mav.addObject("total", 0);
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("stock/ListadoStock");
		return mav;
	}
	

	
	
}//cierre de clase


	