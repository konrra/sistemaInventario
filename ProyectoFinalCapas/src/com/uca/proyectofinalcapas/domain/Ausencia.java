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
@Table(name="ausencia", schema="rh")
public class Ausencia {

	@Id
	@Column(name="idausencia")
	private int id_ausencia;

//	@ManyToOne(fetch = FetchType.EAGER)
//	@JoinColumn(name = "idempleado")
	
	@Column(name="idempleado")
	private Integer id_empleado;
	
	@Column(name="inicioausencia")
	private Date inicioausencia;
	
	@Column(name="finausencia")
	private Date finausencia;
	
	@Column(name="autorizacion")
	private boolean autorizacion;
	
	@Column(name="cantausencia")
	private String canausencia;
	
	@Column(name="uni_salud")
	private String uni_salud;
	
	@Column(name="tipo_ausencia")
	private String tipo_ausencia;
	
	
	
	public int getId_ausencia() {
		return id_ausencia;
	}
	public void setId_ausencia(int id_ausencia) {
		this.id_ausencia = id_ausencia;
	}
	public Integer getId_empleado() {
		return id_empleado;
	}
	public void setId_empleado(Integer id_empleado) {
		this.id_empleado = id_empleado;
	}
	public Date getInicioausencia() {
		return inicioausencia;
	}
	public void setInicioausencia(Date inicioausencia) {
		this.inicioausencia = inicioausencia;
	}
	public Date getFinausencia() {
		return finausencia;
	}
	public void setFinausencia(Date finausencia) {
		this.finausencia = finausencia;
	}
	public boolean isAutorizacion() {
		return autorizacion;
	}
	public void setAutorizacion(boolean autorizacion) {
		this.autorizacion = autorizacion;
	}
	public String getCanausencia() {
		return canausencia;
	}
	public void setCanausencia(String canausencia) {
		this.canausencia = canausencia;
	}
	
	
	
}
