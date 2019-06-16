<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema Administrativo</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body class="body-back">
	<div class="page-header-success" style="text-align:center;">
		<h1>Bienvenido</h1>
	</div>
<div class="panel panel-success">
  <div class="panel-heading">
<div class="btn-group">
  <button type="button" class="btn btn-primary btn-default dropdown-toggle"
          data-toggle="dropdown">Modificar<span class="caret"></span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
    <li><a href="${pageContext.request.contextPath}/crearExp">Edicion de Empleado</a></li>
    <li><a href="${pageContext.request.contextPath}/crearExpMed">Edicion Expediente Medico</a></li>
  </ul>
</div>

<div class="btn-group">
  <button type="button" class="btn btn-info btn-default dropdown-toggle"
          data-toggle="dropdown">Informaciones<span class="caret"></span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
    <li><a href="${pageContext.request.contextPath}/listadoAucO">Ausencias Medicas</a></li>
    <li><a href="${pageContext.request.contextPath}/listadoAucO">Ausencias Otras</a></li>
    <li><a href="${pageContext.request.contextPath}/listadoEmp">Empleado</a></li>
  </ul>
</div>
</div>
</div>

<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>