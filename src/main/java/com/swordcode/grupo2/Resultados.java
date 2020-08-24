package com.swordcode.grupo2;

import java.math.BigDecimal;

public class Resultados extends Porcentaje {
	private String 						cedula;
	private String 						nombre;

	public Resultados(String cedula, String nombre, int totalPreguntas, int totalCorrectas) {
		super(totalPreguntas, totalCorrectas);
		this.cedula = cedula;
		this.nombre = nombre;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}


	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public BigDecimal getPct() {
		BigDecimal correctas = BigDecimal.valueOf(totalCorrectas);
		BigDecimal preguntas = BigDecimal.valueOf(totalPreguntas);
		return correctas.divide(preguntas);
	}

	public String getPctStr() {
		BigDecimal result = getPct();
		result = result.multiply(new BigDecimal("100"));
		return String.format("%.1f%%", result);
	}

	@Override
	public String getNivel() {
		BigDecimal result = getPct();
		if (result.compareTo(PctNivelSuperior) >= 0) return "Nivel superior";
		else if (result.compareTo(PctNivelMedio) >= 0) return "Nivel medio";
		else if (result.compareTo(PctNivelRegular) >= 0) return "Nivel regular";
		return "Fuera de nivel";
	}
}