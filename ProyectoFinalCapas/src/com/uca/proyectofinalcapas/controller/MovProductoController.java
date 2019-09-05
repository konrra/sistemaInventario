package com.uca.proyectofinalcapas.controller;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Cliente;
import com.uca.proyectofinalcapas.domain.Lugar;
import com.uca.proyectofinalcapas.domain.MovProducto;
import com.uca.proyectofinalcapas.domain.Producto;
import com.uca.proyectofinalcapas.domain.Stock;
import com.uca.proyectofinalcapas.repository.ClienteRepository;
import com.uca.proyectofinalcapas.repository.LugarRepository;
import com.uca.proyectofinalcapas.repository.MovProductoRepository;
import com.uca.proyectofinalcapas.repository.ProductoRepository;
import com.uca.proyectofinalcapas.repository.StockRepository;




@Controller
public class MovProductoController {
	
	@Autowired
	private MovProductoRepository movProductoRepository;
	
	@Autowired
	private LugarRepository lugarRepository;
	
	@Autowired
	private ProductoRepository productoRepository;
	
	@Autowired
	private ClienteRepository clienteRepository;
	
	@Autowired
	private StockRepository stockRepository;
	
	
	
	@RequestMapping(value="/listadoMovProducto", method= RequestMethod.GET)
	public ModelAndView listadoMovProducto(){
		ModelAndView mav = new ModelAndView();
//		try {
			
			List<MovProducto> listadoProducto = movProductoRepository.findAllEntrada();
			
			System.out.println("tamaño listado:" + listadoProducto.size());
			for (int i = 0; i < listadoProducto.size(); i++) {
				
				System.out.println("producto: " + listadoProducto.get(i).getProducto());
				
			}
			
			mav.addObject("colectionResult", listadoProducto);
//		}catch (Exception e) {
//			mav.addObject("total", 0);
//			System.out.println(e.getStackTrace());
//		}
		
		mav.setViewName("movProducto/listadoMovProducto");
		return mav;
	}
	
	
	
	
	
//	metodo que actualiza o crea un cliente 
	@RequestMapping(value="/actualizarEntrada", method=RequestMethod.GET)
	public ModelAndView actualizarEntrada(@ModelAttribute MovProducto movProducto) {
		
		ModelAndView mav = new ModelAndView();
		
		Calendar cal = Calendar.getInstance();
	    java.util.Date utilDate = cal.getTime();
		
		Lugar lugar = new Lugar();
		Producto producto = new Producto();
		lugar.setId_lugar(movProducto.getId_lugar());
		producto.setid_producto(movProducto.getId_producto());
		movProducto.setLugar(lugar);
		movProducto.setProducto(producto);
		movProducto.setTipo("E");
		movProducto.setFecha(utilDate);
		
		if(movProducto.getId_producto() ==0 || movProducto.getId_lugar()==0 || movProducto.getCantidad()==0 ) {
			mav.addObject("error", "Ingrese la información correctamente");
			mav.setViewName("movProducto/crearEntrada");
			return mav;
		}
		movProductoRepository.save(movProducto);
		
		return crearEntrada();
	}
	
	
	
	@RequestMapping(value="/actualizarSalida", method=RequestMethod.GET)
	public ModelAndView actualizarSalida(@ModelAttribute MovProducto movProducto) {
		
		Calendar cal = Calendar.getInstance();
	    java.util.Date utilDate = cal.getTime();
	    ModelAndView mav = new ModelAndView();
		
		Lugar lugar = new Lugar();
		Cliente cliente = new Cliente();
		Producto producto = new Producto();
		cliente.setId_cliente(movProducto.getId_cliente());
		lugar.setId_lugar(movProducto.getId_lugar());
		producto.setid_producto(movProducto.getId_producto());
		movProducto.setCliente(cliente);
		movProducto.setLugar(lugar);
		movProducto.setProducto(producto);
		movProducto.setTipo("S");
		movProducto.setFecha(utilDate);
//		if("1".equals(valida)) {
//			mav.addObject("error", "Ingrese la información correctamente");
//			mav.setViewName("movProducto/crearSalida");
//			mav.addObject("vali", "1");
//			return mav;
//		}
		
		Stock stock = stockRepository.findById(producto.getid_producto());
		Integer op = stock.getCantidad() - movProducto.getCantidad();
		if(op < 0 ) {
			mav.addObject("error", "Ingrese la información correctamente");
			return crearSalida();
		}
			
		
		//TODO VALIDACION DE CANTIDADES NEGATIVAS EN STOCK
		movProductoRepository.save(movProducto);
		
		return crearSalida();
	}
	
	@RequestMapping(value="/crearEntrada", method=RequestMethod.GET)
	public ModelAndView crearEntrada() {
		
		
		List<Lugar> comboLugar = lugarRepository.findAllLugar();
		List<Producto> listadoProducto = productoRepository.findAllProduct();
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("comboLugar", comboLugar);
		mav.addObject("total",listadoProducto.size());
		mav.addObject("colectionResultProd",listadoProducto);
		mav.addObject("vali", "0");
		
		mav.setViewName("movProducto/crearEntrada");
		return mav;
	}
	
	@RequestMapping(value="/crearSalida", method=RequestMethod.GET)
	public ModelAndView crearSalida() {
		
		
		List<Lugar> comboLugar = lugarRepository.findAllLugar();
		List<Producto> listadoProducto = productoRepository.findAllProduct();
		List<Cliente> listadoClientes = clienteRepository.findAllCliente();
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("comboLugar", comboLugar);
		mav.addObject("total",listadoProducto.size());
		mav.addObject("colectionResultProd",listadoProducto);
		mav.addObject("colectionResultClien",listadoClientes);
		
		mav.setViewName("movProducto/crearSalida");
		return mav;
	}	
//	}
	
}
