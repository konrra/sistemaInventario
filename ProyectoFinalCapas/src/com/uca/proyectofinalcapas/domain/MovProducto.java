package com.uca.proyectofinalcapas.domain;

import java.util.Date;

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

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="movproducto",schema="si")
public class MovProducto {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_mov_producto")
	private int id_mov_producto;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_lugar")
	private Lugar lugar;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_cliente")
	private Cliente cliente;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_producto")
	private Producto producto;
	
	@Column(name="tipo")
	private String tipo;
	
	@Column(name="cantidad")
	private int cantidad;
	
	@Column(name="fecha")
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date fecha;
	
	@Column(name="comentario")
	private String comentario;
	
	@Column(name="tipo_entrada")
	private String tipo_entrada;
	
	@Transient
	private int id_lugar;
	
	@Transient
	private int id_producto;
	
	@Transient
	private int id_cliente;
	
	@Transient
	private int id_usuario;

	public int getId_lugar() {
		return id_lugar;
	}

	public void setId_lugar(int id_lugar) {
		this.id_lugar = id_lugar;
	}

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

	public int getId_mov_producto() {
		return id_mov_producto;
	}

	public void setId_mov_producto(int id_mov_producto) {
		this.id_mov_producto = id_mov_producto;
	}

	public String getTipo_entrada() {
		return tipo_entrada;
	}

	public void setTipo_entrada(String tipo_entrada) {
		this.tipo_entrada = tipo_entrada;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public int getId_cliente() {
		return id_cliente;
	}

	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	
	
}
