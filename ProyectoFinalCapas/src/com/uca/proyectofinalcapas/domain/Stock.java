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
@Table(name="stock",schema="si")
public class Stock {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_stock")
	private int id_stock;

	@Column(name="id_producto")
	private int id_producto;
	
	@Column(name="id_usuario")
	private int id_usuario;

	@Column(name="cantidad")
	private int cantidad;

	@Column(name="fecha_actualizacion")
	private Date fecha_actualizacion;
	
	@Column(name="descripcion")
	private String descripcion;
	
	@Column(name="codigo")
	private String codigo;
	
	@Transient
	private Usuario usuario;
	
	@Transient
	private Producto producto;
	
	

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public int getId_stock() {
		return id_stock;
	}

	public void setId_stock(int id_stock) {
		this.id_stock = id_stock;
	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Date getFecha_actualizacion() {
		return fecha_actualizacion;
	}

	public void setFecha_actualizacion(Date fecha_actualizacion) {
		this.fecha_actualizacion = fecha_actualizacion;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	


}
