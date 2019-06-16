package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.proyectofinalcapas.domain.Empleado;

public interface AdminRepository extends JpaRepository<Empleado, Integer> {
	
//	public List<Empleado> findByNom_empleado();

}
