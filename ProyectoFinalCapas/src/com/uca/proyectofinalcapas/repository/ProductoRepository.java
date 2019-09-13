package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Categoriaxproducto;
import com.uca.proyectofinalcapas.domain.Producto;


public interface ProductoRepository extends JpaRepository<Producto, Integer> {
	
	public static String FIND_ALL_PRODUCT = "select p from Producto p";
	
	public static String COUNT_ALL_PRODUCT = "select count(p.id_producto) from Producto p";
	
	public static String FIND_BY_ID = "select p from Producto p where p.id_producto = :idProducto";
	
	public static String FIND_CATEGORIA = "select cp from Categoriaxproducto as cp";
	
	public static String FIND_CODIGO = "select p from Producto p where codigo = :codigo";
	
	
	
	@Query(FIND_ALL_PRODUCT)
	public List<Producto> findAllProduct();
	
	@Query(COUNT_ALL_PRODUCT)
	public int countAllProducto();
	
	@Query(FIND_BY_ID)
	public Producto findById(@Param("idProducto") int idProducto);
	
	@Query(FIND_CATEGORIA)
	public List<Categoriaxproducto> findAllCategoriaProd();
	
	@Query()
	public Producto findByCodigo(@Param("codigo") String codigo);
	


}
