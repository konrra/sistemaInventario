package com.uca.proyectofinalcapas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Rol;

public interface RolRepository extends JpaRepository<Rol, Integer> {
	
	public static String FIND_ROL = "select r from Rol r where r.id_rol = :idrol";
	
	@Query(FIND_ROL)
	public Rol findRol(@Param("idrol") int idrol);
}
