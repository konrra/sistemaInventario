package com.uca.proyectofinalcapas.domain;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="producto",schema="si")
public class Producto {

	@Id
	@Column(name="id_producto")
	private int id_producto;

	@Column(name="id_categoria")
	private int id_categoria;

	@Column(name="nombre")
	private String nombre;

	@Column(name="tipo")
	private String tipo;
	
	@Column(name="costo")
	private BigDecimal costo;

	@Column(name="estado")
	private String estado;
	
	@Column(name="precio_publico")
	private BigDecimal precio_publico;
	
	@Column(name="precio_tienda")
	private BigDecimal precio_tienda;
	
	@Column(name="precio_evento")
	private BigDecimal precio_evento;
	
	
	
	public BigDecimal getprecio_publico() {
		return precio_publico;
	}

	public void setprecio_publico(BigDecimal precio_publico) {
		this.precio_publico = precio_publico;
	}

	public BigDecimal getprecio_tienda() {
		return precio_tienda;
	}

	public void setprecio_tienda(BigDecimal precio_tienda) {
		this.precio_tienda = precio_tienda;
	}

	public BigDecimal getprecio_evento() {
		return precio_evento;
	}

	public void setprecio_evento(BigDecimal precio_evento) {
		this.precio_evento = precio_evento;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public BigDecimal getCosto() {
		return costo;
	}

	public void setCosto(BigDecimal costo) {
		this.costo = costo;
	}

	public int getid_producto() {
		return id_producto;
	}

	public void setid_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public int getid_categoria() {
		return id_categoria;
	}

	public void setid_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
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


}
