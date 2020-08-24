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
			<h1 class="display-4">Llene la información del postulante</h1>
		</div>
	</div>
	<div class="container">
		<form id="postulanteForm" action="/resultados-servlet" method="POST">
			<div class="form-group">
				<label pathfor="cedula">Cédula</label>
				<input class="form-control" id="cedula" name="cedula" placeholder="Cédula postulante" required="required" />
				<div class="invalid-feedback">
					Cédula no puede ir vacia
				</div>
			</div>

			<div class="form-group">
				<label pathfor="nombre">Nombre</label>
				<input class="form-control" id="nombre" name="nombre" placeholder="Nombre postulante"
					required="required" />
				<div class="invalid-feedback">
					Nombre no puede ir vacio
				</div>
			</div>

			<div class="form-group">
			<label pathfor="preguntas">Cantidad total de preguntas que se le realizaron</label>
				<input class="form-control" id="preguntas" name="preguntas" placeholder="Total preguntas que se realizaron"
					type="number" required="required" />
				<div class="invalid-feedback">
					Total de preguntas no puede ir vacio
				</div>
			</div>

			<div class="form-group">
				<label pathfor="correctas">Cantidad de preguntas que contestó correctamente</label>
				<input class="form-control" id="correctas" name="correctas" placeholder="Total preguntas que respondio correctamente"
					type="number" required="required" />
				<div class="invalid-feedback">
					Total de preguntas no puede ir vacio
				</div>
			</div>

			<div class="form-group">
				<button class="btn btn-primary " name="submit" type="submit">Procesar</button>
			</div>
		</form>
	</div>
</body>

</html>