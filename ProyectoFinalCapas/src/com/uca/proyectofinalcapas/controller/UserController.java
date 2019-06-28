package com.uca.proyectofinalcapas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import com.uca.proyectofinalcapas.domain.Usuario;
import com.uca.proyectofinalcapas.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class UserController {
	@Autowired
	private UserRepository userRepository;
	
	
	@RequestMapping("/validarUsuario")
	public ModelAndView validarUsuario(@RequestParam("usuario") String usuario, @RequestParam("password") String password){
		ModelAndView mav = new ModelAndView();
		List<Usuario> users = userRepository.findByUsuario(usuario);
		//Validaciones de usuario
		//primero hay que verificar si la longitud es mayor a cero
		//si la longitud es exactamente cero quiere decir que no existe el usuario
		//tambien valida si retorna mas de uno, esto no deberia de darlo pero se agregar por si acaso
		if(users.size() == 0 || users.size() > 1){
			mav.setViewName("user/loginError");
		}else{
			//una vez se encontro un usuario se tiene que hacer la validacion de la contraseña
			for(Usuario u : users){
				if(u.getPass().equals(password)){
					mav.addObject("user", u);
					//esto se da en caso que el password sea el correcto
					//ahora se verificara el rol del usuario
					//1: Admin
					//2: otro
					if(u.getRol() == 1){
						mav.setViewName("indexAdmin");
					}else{
						mav.setViewName("indexUsuario");
					}
				}else{
					//si la contraseña es incorrecta se redirige a un mensaje de error
					mav.setViewName("user/badLogin");
				}
			}
		}
		//mav.setViewName("indexAdmin");
//		return mav;
		return mav;
	}
}
