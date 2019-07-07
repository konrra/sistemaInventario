package com.uca.proyectofinalcapas.domain;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name="rol", schema = "si" )
public class Rol {
	
	@Id
	@Column(name="id_rol")
	private int id_rol;
	 
	@Column(name="tipo_rol")
	private int tipo_rol;
	
	@Column(name="descripcion")
	private String descripcion;
	
	

	public int getId_rol() {
		return id_rol;
	}

	public void setId_rol(int id_rol) {
		this.id_rol = id_rol;
	}

	public int getTipo_rol() {
		return tipo_rol;
	}

	public void setTipo_rol(int tipo_rol) {
		this.tipo_rol = tipo_rol;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	

}
