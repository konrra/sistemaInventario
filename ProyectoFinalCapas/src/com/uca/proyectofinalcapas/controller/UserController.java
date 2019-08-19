package com.uca.proyectofinalcapas.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.uca.proyectofinalcapas.domain.Usuario;
import com.uca.proyectofinalcapas.repository.UserRepository;

@Controller
@SessionAttributes({ "user", "menu","iduser" })
public class UserController {
	@Autowired
	private UserRepository userRepository;

	@RequestMapping("/validarUsuario")
	public ModelAndView validarUsuario(@RequestParam("usuario") String usuario,
			@RequestParam("password") String password) {
		ModelAndView mav = new ModelAndView();
		List<Usuario> users = userRepository.findByUsuario(usuario);

		// Validaciones de usuario
		// primero hay que verificar si la longitud es mayor a cero
		// si la longitud es exactamente cero quiere decir que no existe el usuario
		// tambien valida si retorna mas de uno, esto no deberia de darlo pero se
		// agregar por si acaso
		if (users.size() == 0 || users.size() > 1) {
			mav.setViewName("user/loginError");
		} else {
			// una vez se encontro un usuario se tiene que hacer la validacion de la
			// contraseña
			for (Usuario u : users) {
				if (u.getPass().equals(password) && u.getRol()>0) {
					
					// mav.addObject("user", u);
					// esto se da en caso que el password sea el correcto
					// ahora se verificara el rol del usuario
					// 1: Admin
					// 2: otro
					String userRol = userRepository.findRol(u.getRol());
					
					//String userRol = new String();//userRepository.findRol(u.getRol());
		
					List<String> menuList = Arrays.asList(userRol.split("-"));
					List<String> menuList2 =new ArrayList<String>();
					if(menuList.get(0).toString().equals("1")) {
						menuList2.add("C");
					}
					if(menuList.get(1).toString().equals("1")) {
						menuList2.add("I");
					}
					if(menuList.get(2).toString().equals("1")) {
						menuList2.add("F");
					}
					if(menuList.get(3).toString().equals("1")) {
						menuList2.add("S");
					}
					
					u.setOpcMenu(menuList2);
					mav.addObject("menu", menuList2);
					mav.addObject("user", u);
					mav.addObject("iduser", u.getId_usuario());
					if (u.getRol() == 1) {

						mav.setViewName("indexAdmin");
					} else {
						mav.setViewName("indexAdmin");
					}
				} else {
					// si la contraseña es incorrecta se redirige a un mensaje de error
					mav.setViewName("user/badLogin");
				}
			}
		}
		return mav;
	}
	
	@RequestMapping(value="/listadoUsuario", method= RequestMethod.GET)
	public ModelAndView listadoUsuario(){
		ModelAndView mav = new ModelAndView();
		try {
			
			List<Usuario> listadoUsuario = userRepository.findAllUsuario();
			int totalUsuario = userRepository.countAllUser();
			mav.addObject("colectionResult", listadoUsuario);
			mav.addObject("total", totalUsuario);
		}catch (Exception e) {
			mav.addObject("total", 0);
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("user/ListadoUsuario");
		return mav;
	}
	
	@RequestMapping(value="/editarUsuario", method=RequestMethod.GET)
	public ModelAndView editarUsuario(@RequestParam("id_usuario") Integer idUsuario) {
	
		ModelAndView mav = new ModelAndView();
		
		try {
			Usuario usuario = userRepository.findByIdUser(idUsuario);
			mav.addObject("usuario", usuario);
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		
		mav.setViewName("user/editarUsuario");
		
		return mav;
	}
	
//	metodo que actualiza o crea un cliente 
	@RequestMapping(value="/actualizarUsuario", method=RequestMethod.GET)
	public ModelAndView actUsuario(@ModelAttribute Usuario usuario) {
		ModelAndView mav = new ModelAndView();
		if(StringUtils.isEmpty(usuario.getUsuario())) {
			mav.addObject("error", "Es necesario ingresar los campos obligatorios");
			mav.setViewName("user/editarUsuario");
		}else {
			userRepository.save(usuario);
			return listadoUsuario();
		}

		return mav;
	}
	 
	//crear usuario
	@RequestMapping(value="/crearUsuario", method=RequestMethod.GET)
	public ModelAndView crearUsuario() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/crearUsuario");
		return mav;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public ModelAndView logout() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginError");
		return mav;
	}
	
	
}//cierre de clase


	