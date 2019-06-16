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
				<th>Acción</th>
				<th>C&oacute;digo Emp</th>
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>N&uacute;mero Cont.</th>
				<th>Pais Origen</th>
				<th>Ciudad Origen</th>
				<th>Salario</th>
				<th>Num. Celular</th>
				<th>Num. Telefono</th>
				<th>Nit</th>
				<th>Dui</th>
				<th>ISSS</th>
				<th>Afp</th>
				<th>Tel. Emergencia</th>
			</tr>
		</thead>
		<c:forEach items="${empleado}" var="a" >
			<tr>
				<td><input type="button" class="myButton" onclick="location.href='${pageContext.request.contextPath}/editarExp?id_empleado=${a.id_empleado}'" value="Editar" /></td>
				<td><input type="button" class="btnExp" onclick="location.href='${pageContext.request.contextPath}/listadoExp?id_empleado=${a.id_empleado}'" value="ver Exp. Med." /></td>
				<td>${a.id_empleado}</td>
				<td>${a.s_nomempleado}</td>
				<td>${a.ap_empleado}</td>
				<td>${a.num_contacto}</td>
				<td>${a.pais_origen}</td>
				<td>${a.ciu_origen}</td>
				<td>${a.salario}</td>
				<td>${a.num_tel_cel}</td>
				<td>${a.num_tel_fijo}</td>
				<td>${a.nit}</td>
				<td>${a.dui}</td>
				<td>${a.num_seguro}</td>
				<td>${a.afp}</td>
				<td>${a.telER}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	</div>
	<br>
</body>
</html>