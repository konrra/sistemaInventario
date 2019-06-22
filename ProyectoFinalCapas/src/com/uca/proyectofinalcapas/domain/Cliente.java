package com.uca.proyectofinalcapas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cliente",schema="si")
public class Cliente {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_cliente")
	private int id_cliente;

	@Column(name="nombre")
	private String nombre;

	@Column(name="tipo")
	private String tipo;

	@Column(name="nit")
	private String nit;

	@Column(name="num_tel_fijo")
	private String num_tel_fijo;

	@Column(name="num_tel_cel")
	private String num_tel_cel;

	@Column(name="dui")
	private String dui;
	
	@Column(name="estado")
	private String estado;
	
	
	
	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}


	public int getId_cliente() {
		return id_cliente;
	}

	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNit() {
		return nit;
	}

	public void setNit(String nit) {
		this.nit = nit;
	}

	public String getNum_tel_fijo() {
		return num_tel_fijo;
	}

	public void setNum_tel_fijo(String num_tel_fijo) {
		this.num_tel_fijo = num_tel_fijo;
	}

	public String getNum_tel_cel() {
		return num_tel_cel;
	}

	public void setNum_tel_cel(String num_tel_cel) {
		this.num_tel_cel = num_tel_cel;
	}

	public String getDui() {
		return dui;
	}

	public void setDui(String dui) {
		this.dui = dui;
	}





}
