package com.uca.proyectofinalcapas.domain;

import java.util.Date;
import java.util.LinkedList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.mapping.List;

@Entity
@Table(name = "empleado", schema = "si")
public class Empleado {
	
	@Id
	@Column(name="id_empleado")
	private int id_empleado;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="apellido")
	private String apellido;
	
	@Column(name="fec_nac")
	private Date fecNac;
	
	@Column(name="num_tel_cel")
	private String numTelCel;
	
	@Column(name="num_tel_fijo")
	private String numTelFijo;
	
	@Column(name="nit")
	private String nit;
	
	@Column(name="dui")
	private String dui;
	
	@Column(name="tel_emergencia")
	private String telEmergencia;

	

	public int getId_empleado() {
		return id_empleado;
	}

	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Date getFecNac() {
		return fecNac;
	}

	public void setFecNac(Date fecNac) {
		this.fecNac = fecNac;
	}

	public String getNumTelCel() {
		return numTelCel;
	}

	public void setNumTelCel(String numTelCel) {
		this.numTelCel = numTelCel;
	}

	public String getNumTelFijo() {
		return numTelFijo;
	}

	public void setNumTelFijo(String numTelFijo) {
		this.numTelFijo = numTelFijo;
	}

	public String getNit() {
		return nit;
	}

	public void setNit(String nit) {
		this.nit = nit;
	}

	public String getDui() {
		return dui;
	}

	public void setDui(String dui) {
		this.dui = dui;
	}

	public String getTelEmergencia() {
		return telEmergencia;
	}

	public void setTelEmergencia(String telEmergencia) {
		this.telEmergencia = telEmergencia;
	}
	
	
//	@OneToMany(mappedBy = "empleado", fetch = FetchType.EAGER)
//	private LinkedList<Ausencia> ausencia;
//	
//	@OneToMany(mappedBy = "empleado", fetch = FetchType.EAGER)
//	private LinkedList<AlergiaxEmpleado> alergias;
	
	
	
	
//	public LinkedList<Ausencia> getAusencia() {
//		return ausencia;
//	}
//	public void setAusencia(LinkedList<Ausencia> ausencia) {
//		this.ausencia = ausencia;
//	}
	
	
	
	
}
