package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.uca.proyectofinalcapas.domain.MovProducto;


public interface MovProductoRepository extends JpaRepository<MovProducto,Integer> {

	public static String FIND_ALL = "select m from MovProducto m ";
	
//	public static String FIND_BY_PRODUCTO = "";
	
	@Query(FIND_ALL)
	List<MovProducto> findAllMov();
	
	
	
}
