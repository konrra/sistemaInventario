package com.uca.proyectofinalcapas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uca.proyectofinalcapas.domain.Ausencia;

public interface AusenciaRepository extends JpaRepository<Ausencia, Integer> {
	
	 public final static String AUSENCIA_X_TIPO = "SELECT u FROM Ausencia u WHERE u.tipo_ausencia = :tipo";
	 
	 public final static String AUCENCIA_ALL = "SELECT u FROM Ausencia u";
	
	
	@Query(AUSENCIA_X_TIPO)
	public List<Ausencia> findBytipo_ausencia(@Param("tipo") String tipo);
	
	@Query(AUCENCIA_ALL)
	public List<Ausencia> findAllAu();

}
