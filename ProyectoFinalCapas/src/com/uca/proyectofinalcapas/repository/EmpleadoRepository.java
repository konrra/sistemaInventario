package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Empleado;

public interface EmpleadoRepository extends JpaRepository<Empleado, Integer> {
	
	  //public final static String FIND_BY_USERNAME = "SELECT t.id_empleado FROM Usuario t WHERE t.usuario = :usuario";
	  //public final static String FIND_EMPLEADO = "SELECT u FROM Empleado u WHERE u.id_empleado = :idEmpleado";
	  public final static String FINDALL_EMPLEADO = "SELECT u FROM Empleado u";

	public List<Empleado> findAll();
	
//	@Query(FIND_BY_USERNAME)
//    public int findByUsername(@Param("usuario") String address);
//	
//	@Query(FIND_EMPLEADO)
//    public Empleado findById(@Param("idEmpleado") int id);

	@Query(FINDALL_EMPLEADO)
	public List<Empleado> findAllEmp();
}
