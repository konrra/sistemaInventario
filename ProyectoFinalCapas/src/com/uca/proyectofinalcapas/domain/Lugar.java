package com.uca.proyectofinalcapas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="lugar",schema="si")
public class Lugar {
	
	@Id
	@Column(name="id_lugar")
	private int id_lugar;
	
	@Column(name="descripcion")
	private String descipcion;
	
}
