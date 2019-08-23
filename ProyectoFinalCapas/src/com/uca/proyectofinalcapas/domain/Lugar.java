package com.uca.proyectofinalcapas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="lugar",schema="si")
public class Lugar {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_lugar")
	private int id_lugar;
	
	@Column(name="descripcion")
	private String descripcion;
	
//	@Column(name="estado")
//	private String estado;

	public int getId_lugar() {
		return id_lugar;
	}

	public void setId_lugar(int id_lugar) {
		this.id_lugar = id_lugar;
	}


//	public String getEstado() {
//		return estado;
//	}
//
//	public void setEstado(String estado) {
//		this.estado = estado;
//	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
}
