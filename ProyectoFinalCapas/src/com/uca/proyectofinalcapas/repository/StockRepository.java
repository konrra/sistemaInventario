package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Stock;


public interface StockRepository extends JpaRepository<Stock, Integer>  {
	

	
	public static String FIND_ALL_STOCK = "select u from Stock u join Producto p on u.id_producto = p.id_producto where p.estado='A'";
	
	public static String COUNT_ALL = "select count(u.id_stock) from Stock u join Producto p on u.id_producto = p.id_producto where p.estado='A'";
	
	public static String FIND_BY_ID = "select s from Stock s where s.id_producto = :id_producto";
	
	
	
//	queris de selects dfsdf
	@Query(FIND_ALL_STOCK)
	public List<Stock> findAllStock();
	
	@Query(COUNT_ALL)
	public int countAll();

	@Query(FIND_BY_ID)
	public Stock findById(@Param("id_producto") int id_producto);
	
}
