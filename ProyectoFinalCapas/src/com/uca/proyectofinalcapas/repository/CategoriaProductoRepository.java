package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Categoriaxproducto;
import com.uca.proyectofinalcapas.domain.Cliente;
import com.uca.proyectofinalcapas.domain.Producto;

public interface CategoriaProductoRepository extends JpaRepository<Producto, Integer> {
	
//	public static String FIND_ALL_PRODUCT = "select cp from Categoriaxproducto cp";
//	
//	public static String COUNT_ALL_PRODUCT = "select count(cp.id_categoria_x_producto) from Categoriaxproducto cp";
//	
//	public static String FIND_BY_ID = "select cp from Categoriaxproducto cp where cp.id_categoria_x_producto = :idCat";
	
//	public static String FIND_CATEGORIA = "select cp from Categoriaxproducto cp ";
	
//	@Query(FIND_ALL_PRODUCT)
//	public List<Producto> findAllProduct();
//	
//	@Query(COUNT_ALL_PRODUCT)
//	public int countAllProducto();
	
//	@Query(FIND_BY_ID)
//	public Producto findById(@Param("idCat") int idCategoria);
	
//	@Query(FIND_CATEGORIA)
//	public List<CatProducto> findAllCategoriaProd();

}
