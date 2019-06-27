package com.uca.proyectofinalcapas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="categoriaxproducto",schema="si")
public class Categoriaxproducto {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_categoria_x_producto")
	private int id_categoria_x_producto;
	
	@Column(name="descripcion")
	private String descripcion;
	
//	@OneToMany(fetch=FetchType.LAZY)
//	private List<Producto> producto;
	
	@Column(name="estado")
	private String estado;

	public int getId_categoria_x_producto() {
		return id_categoria_x_producto;
	}

	public void setId_categoria_x_producto(int id_categoria_x_producto) {
		this.id_categoria_x_producto = id_categoria_x_producto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

//	public List<Producto> getProducto() {
//		return producto;
//	}
//
//	public void setProducto(List<Producto> producto) {
//		this.producto = producto;
//	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	
}
