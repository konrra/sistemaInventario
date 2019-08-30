package com.uca.proyectofinalcapas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Stock;
import com.uca.proyectofinalcapas.repository.StockRepository;

@Controller
public class StockController {
	@Autowired
	private StockRepository stockRepository;

	@RequestMapping(value="/listadoStock", method= RequestMethod.GET)
	public ModelAndView listadoStock(){
		ModelAndView mav = new ModelAndView();
		try {
			
			
			List<Stock> listadoStock = stockRepository.findAllStock();
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


	