package com.uca.proyectofinalcapas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity 
@Table(name="usuario", schema = "si" )
public class Usuario {
	
	@Id
	@Column(name="id_usuario")
	private int id_usuario;
	 
	@Column(name="usuario")
	private String usuario;
	
	@Column(name="password")
	private String password;
	
	@Column(name="rol")
	private int rol;
	
	@Transient
	private List<String> OpcMenu;
	
	public List<String> getOpcMenu() {
		return OpcMenu;
	}

	public void setOpcMenu(List<String> opcMenu) {
		OpcMenu = opcMenu;
	}
	
//	private String rolDescripcion;
//
//
//	public String getRolDescripcion() {
//		return rolDescripcion;
//	}
//
//	public void setRolDescripcion(String strings) {
//		this.rolDescripcion = strings;
//	}

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

 

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPass() {
		return password;
	}

	public void setPass(String pass) {
		this.password = pass;
	}

	public int getRol() {
		return rol;
	}

	public void setRol(int rol) {
		this.rol = rol;
	}
	
}
