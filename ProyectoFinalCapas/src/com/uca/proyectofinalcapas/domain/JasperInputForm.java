package com.uca.proyectofinalcapas.domain;


public class JasperInputForm {

	
	private String noofYears;
	private String rptFmt="Html";

	
	public String getRptFmt() {
		return rptFmt;
	}

	public void setRptFmt(String rptFmt) {
		this.rptFmt = rptFmt;
	}

	public String getNoofYears() {
		return noofYears;
	}

	public void setNoofYears(String noofYears) {
		this.noofYears = noofYears;
	}
	
}
