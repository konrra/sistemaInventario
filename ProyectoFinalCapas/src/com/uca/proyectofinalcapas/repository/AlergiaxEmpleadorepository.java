package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.AlergiaxEmpleado;
import com.uca.proyectofinalcapas.domain.Empleado;

public interface AlergiaxEmpleadorepository  extends JpaRepository<AlergiaxEmpleado, Integer>{
	
	public final static String FINDALL_EXP = "SELECT u FROM AlergiaxEmpleado u";
	public final static String FIND_EXPID = "SELECT u FROM AlergiaxEmpleado u WHERE u.id_empleado = :id";
	
	@Query(FINDALL_EXP)
	public List<AlergiaxEmpleado> findAllExp();
	
	@Query(FIND_EXPID)
    public List<AlergiaxEmpleado> findById(@Param("id") int id);
}
