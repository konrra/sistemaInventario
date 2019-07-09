package com.uca.proyectofinalcapas.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="factura",schema="si")
public class Factura {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_factura")
	private int id_factura;
	
	@Column(name="cliente")
	private String cliente;
	
	@Column(name="fecha")
	private Date fecha;
	
	@Transient
	private String direccion;
	
	@Transient
	private String venta_cuenta;
	
	@Transient
	private String nit_dui;
	
	@Transient
	private int numero;

	public int getId_factura() {
		return id_factura;
	}

	public void setId_factura(int id_factura) {
		this.id_factura = id_factura;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getVenta_cuenta() {
		return venta_cuenta;
	}

	public void setVenta_cuenta(String venta_cuenta) {
		this.venta_cuenta = venta_cuenta;
	}

	public String getNit_dui() {
		return nit_dui;
	}

	public void setNit_dui(String nit_dui) {
		this.nit_dui = nit_dui;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}
	
	
	
}
