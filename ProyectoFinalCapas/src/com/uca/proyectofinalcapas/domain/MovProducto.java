package com.uca.proyectofinalcapas.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="movproducto",schema="si")
public class MovProducto {

	@Id
	@Column(name="id_mov_producto")
	private int id_mov_producto;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_lugar")
	private Lugar lugar;
	
	@Column(name="tipo")
	private String tipo;
	
	@Column(name="cantidad")
	private int cantidad;
	
	@Column(name="fecha")
	private Date fecha;
	
	@Column(name="comentario")
	private String comentario;
	
	
	

	public Lugar getLugar() {
		return lugar;
	}

	public void setLugar(Lugar lugar) {
		this.lugar = lugar;
	}

	public int getid_mov_producto() {
		return id_mov_producto;
	}

	public void setid_mov_producto(int id_mov_producto) {
		this.id_mov_producto = id_mov_producto;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	
	
}
