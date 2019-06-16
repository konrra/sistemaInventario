package com.uca.proyectofinalcapas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="alergiaxempleado", schema="rh")
public class AlergiaxEmpleado {
	
	@Id
	@Column(name="idexp")
	private int idexp;
	
	@Column(name="idempleado")
	private int id_empleado;
	
	@Column(name="descrialergia")
	private String descripcion;
	
	@Column(name="nommedicamento")
	private String n_medicamento;
	
	@Column(name="razonmedicamento")
	private String razon;

//	@ManyToOne(fetch = FetchType.EAGER)
//	@JoinColumn(name = "idempleado")
//	private Empleado empleado;
	
	
	
	public int getId_emplead() {
		return id_empleado;
	}

	public int getIdexp() {
		return idexp;
	}

	public void setIdexp(int idexp) {
		this.idexp = idexp;
	}

	public int getId_empleado() {
		return id_empleado;
	}

	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}

	public void setId_emplead(int id_emplead) {
		this.id_empleado = id_emplead;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getN_medicamento() {
		return n_medicamento;
	}

	public void setN_medicamento(String n_medicamento) {
		this.n_medicamento = n_medicamento;
	}

	public String getRazon() {
		return razon;
	}

	public void setRazon(String razon) {
		this.razon = razon;
	}
	
	
	
	
}
