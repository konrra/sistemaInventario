<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>

<div>
	<div class="row" style="height:100vh; background-color: white;">
		<div class="col-xs-*" style="background-color: black;" >
			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*" style="width: 75%">
			<div class="container" style="margin-left: 2%; margin-top: 2%">

						<c:if test="${not empty error}">
							<div class="alert alert-danger alert-dismissible fade show"
								 role="alert"      >
								<strong>Error:</strong>
								<c:out value="${error}" />
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</c:if>
				<body class="body-back">
					<form class="form-horizontal" role="form"
						action="${pageContext.request.contextPath}/actualizarUsuario">
					
						
					<div class="card">
						<div class="card-header">Edici�n de informaci�n del Usuario
						</div>
						<div class="card-body">
						<div style="width: 50%; float: left;">
							<div class="form-group">
								<label class="col-sm-3 control-label">Usuario</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" name="usuario"
										value="${usuario.usuario }" placeholder="" size="30">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Contrase�a</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" name="password"
										value="${usuario.password }" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Rol</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" name="rol"
										value="${usuario.rol}" placeholder="">
								</div>
							</div>
						</div>
						
						<div style="width: 50%; float: right;">
							<div class="form-group">
								<label class="col-sm-3 control-label">Nombre</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" name="nombre"
										value="${usuario.nombre }" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Apellido</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" name="apellido"
										value="${usuario.apellido }" placeholder="">
								</div>
							</div>
							</div>
						</div>
						<!-- div que finaliza el body del panel -->
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-danger"
							onclick="location.href='${pageContext.request.contextPath}/listadoUsuario'">Cancelar</button>
						<button type="submit" class="btn btn-success">Guardar</button>
					</div>
					<!-- div que finaliza el footer del panel -->

					</form>


				</body>



			</div>

		</div>
	</div>
	</div>
</html>