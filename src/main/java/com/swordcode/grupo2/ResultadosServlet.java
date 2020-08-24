package com.swordcode.grupo2;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

@WebServlet(
  name = "ResultadosServlet", 
  urlPatterns = "/resultados-servlet")
public class ResultadosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String cedula = request.getParameter("cedula");
		int preguntasTotal = Integer.valueOf(request.getParameter("preguntas"));
		int respuestasCorrectas = Integer.valueOf(request.getParameter("correctas"));

		Resultados resultado = new Resultados(cedula, nombre, preguntasTotal, respuestasCorrectas);
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String dateStr =  dateFormat.format(date);
		request.setAttribute("dateStr", dateStr);
		request.setAttribute("resultado", resultado);
		RequestDispatcher dispatcher = request.getRequestDispatcher(
          "/WEB-INF/jsp/resultado.jsp");
        dispatcher.forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	
}