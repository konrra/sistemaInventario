<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="resources/js/bootstrap.min.js"></script>

<style>
.jumbotron {
	background-color: #9FCF16;
	color: #FFFFFF;
}
body {
	background-color: white;
}
</style>

<title>Sistema de Inventario</title>
</head>
<body>
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <h1 class="display-4">Control de inventario</h1>
	    <p class="lead">Asociación Manos Amigas</p>
	  </div>
	</div>
	
	<div class="container" style="text-align: center; background-color: white;">
		<div class="well">
			<div class="row">
				<div class="col-sm-3"></div>

				<div class="col-sm-6 center-block">
					<form role="form"
						action="${pageContext.request.contextPath}/validarUsuario"
						method="post">
						<div class="form-group">
							<label for="usrname"><span
								class="glyphicon glyphicon-user"></span> Usuario:</label> <input
								type="text" class="form-control" id="usrname" name="usuario"
								required="true" placeholder="Ingrese el nombre de usuario">
						</div>
						<div class="form-group">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> Contrase&ntilde;a</label> <input
								type="password" class="form-control" id="psw" name="password"
								required="true" placeholder="Introduzca su contrasena">
						</div>
						<div class="col-xs-3"></div>
						<div class="col-xs-6">
							<input  type="submit" class="btn btn-success btn-block"
								value="Ingresar" />

						</div>
						<div class="col-xs-3"></div>

					</form>
				</div>

				<div class="col-sm-3"></div>

			</div>

		</div> 
		</div>
</body>
</html>