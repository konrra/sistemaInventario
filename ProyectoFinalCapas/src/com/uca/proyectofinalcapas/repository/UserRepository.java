package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.proyectofinalcapas.domain.Usuario;


public interface UserRepository extends JpaRepository<Usuario, Integer>  {
	public List<Usuario> findByUsuario(String usuario);
	
	public List<Usuario> findByIdUser(int idUser);
	
	
}
