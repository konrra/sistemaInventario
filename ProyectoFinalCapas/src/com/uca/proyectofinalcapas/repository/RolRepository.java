package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Rol;

public interface RolRepository extends JpaRepository<Rol, Integer> {
	
	public static String FIND_ROL = "select r from Rol r where r.id_rol = :idrol";
	
	public static String FIND_ALL_ROL = "select u from Rol u ";
	
	public static String COUNT_ALL_ROL = "select count(u.id_rol) from Rol u ";
	
	@Query(FIND_ROL)
	public Rol findRol(@Param("idrol") int idrol);
	
	@Query(FIND_ALL_ROL)
	public List<Rol> findAllRol();
	
	@Query(COUNT_ALL_ROL)
	public int countAllRol();
}
