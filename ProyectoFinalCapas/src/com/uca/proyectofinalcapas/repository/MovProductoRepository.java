package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.MovProducto;


public interface MovProductoRepository extends JpaRepository<MovProducto,Integer> {

//	public static String FIND_ALL = "select m from MovProducto m ";
//	
//	public static String FIND_BY_PRODUCTO = "";
//	
//	@Query(FIND_ALL)
//	List<MovProducto> findAllMov();
	
	public static String FIND_ALL_MOVPRODUCTO = "select m from MovProducto m";
	
	public static String COUNT_ALL_MOVPRODUCTO = "select count(m.id_mov_producto) from MovProducto m";
	
	public static String FIND_BY_ID = "select m from MovProducto m where m.id_mov_producto = :id_mov_producto";
	
	@Query(FIND_ALL_MOVPRODUCTO)
	public List<MovProducto> findAllEntrada();
	
	@Query(COUNT_ALL_MOVPRODUCTO)
	public int countAllEntrada();
	
	@Query(FIND_BY_ID)
	public MovProducto findById(@Param("id_mov_producto") int id_mov_producto);
	
	
	
}
