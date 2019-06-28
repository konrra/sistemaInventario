package com.uca.proyectofinalcapas.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="stock",schema="si")
public class Stock {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_stock")
	private int id_stock;

	@Column(name="id_producto")
	private int id_producto;

	@Column(name="cantidad")
	private int cantidad;

	@Column(name="fecha_act")
	private Date fecha_act;

	public int getid_stock() {
		return id_stock;
	}

	public void setid_stock(int id_stock) {
		this.id_stock = id_stock;
	}

	public int getid_producto() {
		return id_producto;
	}

	public void setid_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Date getfecha_act() {
		return fecha_act;
	}

	public void setfecha_act(Date fecha_act) {
		this.fecha_act = fecha_act;
	}



}
