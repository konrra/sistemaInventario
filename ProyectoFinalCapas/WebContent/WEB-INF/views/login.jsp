<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<style>
.jumbotron {
	background-color: #0080ff;
	color: #FFFFFF;
}

body {
	background-color: #808080
}
</style>

<title>Sistema de Recursos Humanos</title>
</head>
<body>
	<div class="jumbotron" style="text-align: center;">
		<h1>Sistema de Administracion de Recursos humanos</h1>
		<h2>Bienvenido</h2>
	</div>
	<div class="container" style="text-align: center;">
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
							<input type="submit" class="btn btn-success btn-block"
								value="Ingresar" />

						</div>
						<div class="col-xs-3"></div>

					</form>
				</div>

				<div class="col-sm-3"></div>

			</div>

		</div>
</body>
</html>