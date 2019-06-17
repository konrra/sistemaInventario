package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Integer> {
	
	public static String FIND_ALL_CLIENTES = "select c from Cliente c";
	
	public static String COUNT_ALL_CUSTOMERS = "select count(c.id_cliente) from Cliente c";
	
	public static String FIND_BY_ID = "select c from Cliente where c.id_cliente = :idCliente";
	
	@Query(FIND_ALL_CLIENTES)
	public List<Cliente> findAllCliente();
	
	@Query(COUNT_ALL_CUSTOMERS)
	public int countAllCliente();
	
	@Query(FIND_BY_ID)
	public Cliente findById(@Param("id_cliente") int idCliente);

}