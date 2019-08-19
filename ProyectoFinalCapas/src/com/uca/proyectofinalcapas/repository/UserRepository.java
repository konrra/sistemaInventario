package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Usuario;


public interface UserRepository extends JpaRepository<Usuario, Integer>  {
	
	public static String FIND_BY_USER = "select u from Usuario u where usuario = :usuario";
	
	public static String FIND_BY_ID = "select u from Usuario u where id_usuario = :idUser";
	
	public static String FIND_ROL = "select u.opccatalagos||'-'||u.opcinventario||'-'||u.opcfactura||'-'||u.opcseguridad  from Rol u where u.id_rol = :idrol";
	
	public static String FIND_ALL_USER = "select u from Usuario u";
	
	public static String COUNT_ALL_USER = "select count(u.id_usuario) from Usuario u";
	
	
	@Query(FIND_ROL)
	public String findRol(@Param("idrol") int idrol);
	
	@Query(FIND_BY_USER)
	public List<Usuario> findByUsuario( @Param("usuario") String usuario);
	
	@Query(FIND_BY_ID)
	public Usuario findByIdUser(@Param("idUser") int idUser);
	
	@Query(FIND_ALL_USER)
	public List<Usuario> findAllUsuario();
	
	@Query(COUNT_ALL_USER)
	public int countAllUser();
	
	
}
