package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Usuario;


public interface UserRepository extends JpaRepository<Usuario, Integer>  {
	
	public static String FIND_BY_USER = "select u from Usuario u where usuario = :usuario";
	
	public static String FIND_BY_ID = "select u from Usuario u where id_usuario = :idUser";
	
	@Query(FIND_BY_USER)
	public List<Usuario> findByUsuario( @Param("usuario") String usuario);
	
	@Query(FIND_BY_ID)
	public List<Usuario> findByIdUser(@Param("idUser") int idUser);
	
	
}
