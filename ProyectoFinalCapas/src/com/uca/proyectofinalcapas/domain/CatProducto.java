package com.uca.proyectofinalcapas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="categoriaxproducto",schema="si")
public class CatProducto {

	@Id
	@Column(name="id_cat_producto")
	private int id_cat_producto;
	
	@Column(name="descripcion")
	private String descripcion;

	public int getIdCatProducto() {
		return id_cat_producto;
	}

	public void setIdCatProducto(int idCatProducto) {
		this.id_cat_producto = idCatProducto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
}
