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
	
	@Column(name="descripcion")
	private String descripcion;
	
	@Column(name="opcionmenu")
	private String opcionmenu;
	
	@Column(name="opccatalagos")
	private int opccatalagos;
	
	@Column(name="opcinventario")
	private int opcinventario;
	
	@Column(name="opcfactura")
	private int opcfactura;
	
	@Column(name="opcseguridad")
	private int opcseguridad;
	
	
	

	public int getOpccatalagos() {
		return opccatalagos;
	}

	public void setOpccatalagos(int opccatalagos) {
		this.opccatalagos = opccatalagos;
	}

	public int getOpcinventario() {
		return opcinventario;
	}

	public void setOpcinventario(int opcinventario) {
		this.opcinventario = opcinventario;
	}

	public int getOpcfactura() {
		return opcfactura;
	}

	public void setOpcfactura(int opcfactura) {
		this.opcfactura = opcfactura;
	}

	public int getOpcseguridad() {
		return opcseguridad;
	}

	public void setOpcseguridad(int opcseguridad) {
		this.opcseguridad = opcseguridad;
	}

	public String getOpcionmenu() {
		return opcionmenu;
	}

	public void setOpcionmenu(String opcionmenu) {
		this.opcionmenu = opcionmenu;
	}

	public int getId_rol() {
		return id_rol;
	}

	public void setId_rol(int id_rol) {
		this.id_rol = id_rol;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	

}
