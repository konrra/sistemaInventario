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
</br>
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Listado de Empleados</h3>
  </div>
  <div class="panel-body">
	<div class="datagrid">
	<table class="table table-striped" >
		<thead>
			<tr>
				<th>Accion</th>
				<th>C&oacute;digo Emp</th>
				<th>Alergia</th>
				<th>Nombre Medicamento</th>
				<th>Razon</th>
			</tr>
		</thead>
		<c:forEach items="${exp}" var="e" >
			<tr>
				<td><input type="button" class="btnExp" onclick="location.href='${pageContext.request.contextPath}/editarExpMed?idexp=${e.idexp}'" value="Editar Exp." /></td>
				<td>${e.id_empleado}</td>
				<td>${e.descripcion}</td>
				<td>${e.n_medicamento}</td>
				<td>${e.razon}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	</div>
	<br>
</body>
</html>