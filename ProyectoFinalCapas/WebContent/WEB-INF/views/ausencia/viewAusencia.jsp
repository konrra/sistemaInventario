<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body class="grad1">
	<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Listado de Empleados</h3>
  </div>
  <div class="panel-body">
	<div class="datagrid">
	<table class="table table-striped" >
		<thead>
			<tr>
				<th>Acci&oacute;n</th>
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>Telefono</th>
				<th>Fecha Nacimiento</th>
				<th>Fecha Ingreso</th>
				<th>Estado</th>
			</tr>
		</thead>
		<c:forEach items="${ausencia}" var="a">
			<tr>
			<c:if test="${a.tipo_ausencia == 'A'}">
				<td><input type="button" class="myButton" onclick="location.href='${pageContext.request.contextPath}/editaralumno?calumno=${a.id_ausencia}'" value="Aceptar" /></td>
				<td><input type="button" class="myButton" onclick="location.href='${pageContext.request.contextPath}/editaralumno?calumno=${a.id_ausencia}'" value="Denegar" /></td>
				</c:if>
				<td>${a.snombre}</td>
				<td>${a.sapellido}</td>
				<td>${a.stelefono}</td>
				<td>${a.fechaNacDelegate}</td>
				<td>${a.fechaIngDelegate}</td>
				<td>${a.estadoDelegate}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	</div>
	<br>
</body>
</html>