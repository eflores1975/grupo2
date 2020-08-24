<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<title>Postulante a un empleo</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Resultado de la postulación</h1>
		</div>
    </div>
    <br/>
    <div class="container">
        <table class="table table-borderless">
            <tr width="100%">
                <td width="50%">Empresa: ABC</td>
                <td width="50%" align="right">Fecha: ${dateStr}</td>
            </tr>
        </table>
    </div>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr>
                  <th scope="col" width="25%">Cédula</th>
                  <th scope="col" width="25%">Nombre</th>
                  <th scope="col" width="25%">Preguntas Realizadas</th>
                  <th scope="col" width="25%">Preguntas Correctas</th>
                </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>${resultado.cedula}</td>
                      <td>${resultado.nombre}</td>
                      <td>${resultado.totalPreguntas}</td>
                      <td>${resultado.totalCorrectas}</td>
                  </tr>
              </tbody>
        </table>
        <hr style="border-top: 12px solid rgba(0, 0, 0, 100);"/>
    </div>
    <div class="container">
        <table class="table table-bordered">
              <tbody>
                  <tr>
                      <td class="td-bordered" width="25%"></td>
                      <td class="td-bordered" width="25%"></td>
                      <td width="15%">Porcentaje Obtenido</td>
                      <td width="10%">${resultado.pctStr}</td>
                      <td width="25%">${resultado.nivel}</td>
                  </tr>
              </tbody>
        </table>
</body>

</html>