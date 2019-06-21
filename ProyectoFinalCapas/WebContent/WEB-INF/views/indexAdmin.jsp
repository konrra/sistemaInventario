<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema Administrativo</title>
<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="resources/js/bootstrap.min.js"></script>

<style>
.btn-secondary {
	background-color: #9FCF16;
	
}
body {
	background-color: #808080
}
</style>

</head>
<body class="body-back">

	<button  type="button" class="btn btn-secondary btn-lg btn-block">Fundacion Manos Amigas</button>

<div class="panel panel-success">
  <div class="panel-heading">
  
  	<nav class="navbar navbar-dark bg-dark">
  		<a class="navbar-brand" href="${pageContext.request.contextPath}/indexAdmin">MENU</a>
  		
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  
		  <div class="collapse navbar-collapse" id="navbarText">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="${pageContext.request.contextPath}/indexCat">Administrar Catalagos <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/crearExp">Administrar Roles</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Administrar Usuarios</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Registrar Entradas</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Registrar Salidas</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Crear Venta</a>
		      </li>
		    </ul>
		  </div>
	</nav>


</body>
</html>