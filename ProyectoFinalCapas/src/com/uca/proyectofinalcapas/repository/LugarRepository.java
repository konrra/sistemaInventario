package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Lugar;

public interface LugarRepository extends JpaRepository<Lugar, Integer> {
	
	public static String FIND_ALL_LUGAR = "select l from Lugar l where l.estado = 'A' ";
	
	public static String COUNT_ALL_LUGAR = "select count(l.id_lugar) from Lugar l where l.estado = 'A' ";
	
	public static String FIND_BY_ID = "select l from Lugar l where l.id_lugar = :idLugar";
	
	
	@Query(FIND_ALL_LUGAR)
	public List<Lugar> findAllLugar();
	
	@Query(COUNT_ALL_LUGAR)
	public int countAllLugar();
	
	@Query(FIND_BY_ID)
	public Lugar findById(@Param("idLugar") int idLugar);
	

}
