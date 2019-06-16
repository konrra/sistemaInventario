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
@Table(name = "empleado", schema = "rh")
public class Empleado {
	
	@Id
	@Column(name="idempleado")
	private int id_empleado;
	
	@Column(name="nomempleado")
	private String s_nomempleado;
	
	@Column(name="apempleado")
	private String ap_empleado;
	
	
	
	@Column(name="fnac")
	private Date f_nac;
	
	@Column(name="ciuorigen")
	private String ciu_origen;
	
	@Column(name="paisorigen")
	private String pais_origen;
	
	@Column(name="numcontacto")
	private String num_contacto;
	
	@Column(name="salario")
	private Double salario;
	
	@Column(name="numtelcel")
	private String num_tel_cel;
	
	@Column(name="numtelfijo")
	private String num_tel_fijo;
	
	@Column(name="nit")
	private String nit;
	
	@Column(name="dui")
	private String dui;
	
	@Column(name="numseguro")
	private String num_seguro;
	
	@Column(name="afp")
	private String afp;
	
	@Column(name="telemergencia")
	private String telER;
	
	
//	@OneToMany(mappedBy = "empleado", fetch = FetchType.EAGER)
//	private LinkedList<Ausencia> ausencia;
//	
//	@OneToMany(mappedBy = "empleado", fetch = FetchType.EAGER)
//	private LinkedList<AlergiaxEmpleado> alergias;
	
	
	public int getId_empleado() {
		return id_empleado;
	}
	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}
	public String getNom_empleado() {
		return s_nomempleado;
	}
	public String getS_nomempleado() {
		return s_nomempleado;
	}
	public void setS_nomempleado(String s_nomempleado) {
		this.s_nomempleado = s_nomempleado;
	}
	public void setNom_empleado(String nom_empleado) {
		this.s_nomempleado = nom_empleado;
	}
	public String getAp_empleado() {
		return ap_empleado;
	}
	public void setAp_empleado(String ap_empleado) {
		this.ap_empleado = ap_empleado;
	}
	public Date getF_nac() {
		return f_nac;
	}
	public void setF_nac(Date f_nac) {
		this.f_nac = f_nac;
	}
	public String getCiu_origen() {
		return ciu_origen;
	}
	public void setCiu_origen(String ciu_origen) {
		this.ciu_origen = ciu_origen;
	}
	public String getPais_origen() {
		return pais_origen;
	}
	public void setPais_origen(String pais_origen) {
		this.pais_origen = pais_origen;
	}
	public String getNum_contacto() {
		return num_contacto;
	}
	public void setNum_contacto(String num_contacto) {
		this.num_contacto = num_contacto;
	}
	public Double getSalario() {
		return salario;
	}
	public void setSalario(Double salario) {
		this.salario = salario;
	}
	public String getNum_tel_cel() {
		return num_tel_cel;
	}
	public void setNum_tel_cel(String num_tel_cel) {
		this.num_tel_cel = num_tel_cel;
	}
	public String getNum_tel_fijo() {
		return num_tel_fijo;
	}
	public void setNum_tel_fijo(String num_tel_fijo) {
		this.num_tel_fijo = num_tel_fijo;
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
	public String getNum_seguro() {
		return num_seguro;
	}
	public void setNum_seguro(String num_seguro) {
		this.num_seguro = num_seguro;
	}
	public String getAfp() {
		return afp;
	}
	public void setAfp(String afp) {
		this.afp = afp;
	}
	public String getTelER() {
		return telER;
	}
	public void setTelER(String telER) {
		this.telER = telER;
	}
//	public LinkedList<Ausencia> getAusencia() {
//		return ausencia;
//	}
//	public void setAusencia(LinkedList<Ausencia> ausencia) {
//		this.ausencia = ausencia;
//	}
	
	
	
	
}
