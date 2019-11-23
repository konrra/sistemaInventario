package com.uca.proyectofinalcapas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity 
@Table(name="usuario", schema = "si" )
public class Usuario {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_usuario")
	private int id_usuario;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="rol")
	private Rol rolxusuario;
	
	@Transient
	private int rol;
	 
	@Column(name="usuario")
	private String usuario;
	
	@Column(name="password")
	private String password;
	
//	@Column(name="rol")
//	private int rol;
	
	@Transient
	private List<String> OpcMenu;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="apellido")
	private String apellido;
	
	
	
	public int getRol() {
		return rol;
	}

	public void setRol(int rol) {
		this.rol = rol;
	}

	public Rol getRolxusuario() {
		return rolxusuario;
	}

	public void setRolxusuario(Rol rolxusuario) {
		this.rolxusuario = rolxusuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public List<String> getOpcMenu() {
		return OpcMenu;
	}

	public void setOpcMenu(List<String> opcMenu) {
		OpcMenu = opcMenu;
	}

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

//	public int getRol() {
//		return rol;
//	}
//
//	public void setRol(int rol) {
//		this.rol = rol;
//	}
	
}
