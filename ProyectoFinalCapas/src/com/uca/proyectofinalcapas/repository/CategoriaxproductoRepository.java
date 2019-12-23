package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Categoriaxproducto;

public interface CategoriaxproductoRepository extends JpaRepository<Categoriaxproducto, Integer> {
	
	public static String FIND_ALL_CATEGORIA = "select t from Categoriaxproducto t where t.estado = 'A' ";
	
	public static String COUNT_ALL_CATEGORIA = "select count(t.id_categoria_x_producto) from Categoriaxproducto t where t.estado = 'A'";
	
	public static String FIND_BY_ID = "select t from Categoriaxproducto t where t.id_categoria_x_producto = :idCat";
	
	
	@Query(FIND_ALL_CATEGORIA)
	public List<Categoriaxproducto> findAllCategoria();
	
	@Query(COUNT_ALL_CATEGORIA)
	public int countAllCategoria();
	
	@Query(FIND_BY_ID)
	public Categoriaxproducto findById(@Param("idCat") int idCategoria);
	

}
