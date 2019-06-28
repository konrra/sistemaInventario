package com.uca.proyectofinalcapas.domain;

import java.math.BigDecimal;

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
@Table(name="producto",schema="si")
public class Producto {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_producto")
	private int id_producto;

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="id_categoria_x_producto")
	private Categoriaxproducto categoriaxproducto;
	

	@Column(name="nombre")
	private String nombre;

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
	
	@Transient
	private int id_categoria_x_producto;
	
	

	public int getId_categoria_x_producto() {
		return id_categoria_x_producto;
	}

	public void setId_categoria_x_producto(int id_categoria_x_producto) {
		this.id_categoria_x_producto = id_categoria_x_producto;
	}

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


	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}
	

	public Categoriaxproducto getCategoriaxproducto() {
		return categoriaxproducto;
	}

	public void setCategoriaxproducto(Categoriaxproducto categoriaxproducto) {
		this.categoriaxproducto = categoriaxproducto;
	}

	public BigDecimal getPrecio_publico() {
		return precio_publico;
	}

	public void setPrecio_publico(BigDecimal precio_publico) {
		this.precio_publico = precio_publico;
	}

	public BigDecimal getPrecio_tienda() {
		return precio_tienda;
	}

	public void setPrecio_tienda(BigDecimal precio_tienda) {
		this.precio_tienda = precio_tienda;
	}

	public BigDecimal getPrecio_evento() {
		return precio_evento;
	}

	public void setPrecio_evento(BigDecimal precio_evento) {
		this.precio_evento = precio_evento;
	}

	
	

}
