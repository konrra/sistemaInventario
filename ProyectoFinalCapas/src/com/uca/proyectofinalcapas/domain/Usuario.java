package com.uca.proyectofinalcapas.domain;

import java.util.Date;
import java.util.LinkedList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.mapping.List;

@Entity 
@Table(name="user", schema = "rh" )
public class Usuario {
	
	@Id
	@Column(name="iduser")
	private int idUser;
	
	@Column(name="idempleado")
	private int idEmpleado;
	
	@Column(name="usuario")
	private String usuario;
	
	@Column(name="pass")
	private String pass;
	
	@Column(name="rol")
	private int rol;

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getRol() {
		return rol;
	}

	public void setRol(int rol) {
		this.rol = rol;
	}
	
	
	
	
}
