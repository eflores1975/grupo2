package com.swordcode.grupo2;

import java.math.BigDecimal;

public abstract class Porcentaje {
    protected int totalPreguntas;
    protected int totalCorrectas;

	protected static final BigDecimal	PctNivelSuperior 	= new BigDecimal("0.9");
	protected static final BigDecimal	PctNivelMedio 		= new BigDecimal("0.75");
    protected static final BigDecimal	PctNivelRegular 	= new BigDecimal("0.5");

    public Porcentaje(int totalPreguntas, int totalCorrectas) {
		this.totalPreguntas = totalPreguntas;
		this.totalCorrectas = totalCorrectas;
	}

	abstract String getNivel();

    public int getTotalPreguntas() {
		return totalPreguntas;
	}

	public void setTotalPreguntas(int totalPreguntas) {
		this.totalPreguntas = totalPreguntas;
	}

	public int getTotalCorrectas() {
		return totalCorrectas;
	}

	public void setTotalCorrectas(int totalCorrectas) {
		this.totalCorrectas = totalCorrectas;
	}
}