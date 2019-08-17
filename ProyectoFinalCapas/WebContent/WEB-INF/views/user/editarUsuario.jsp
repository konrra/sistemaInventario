<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>

<div>
	<div class="row" style="height:100vh;">
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
					<input type="hidden" name="id_usuario" id="id_usuario"
						value="${usuario.id_usuario}">
						
					<div class="card">
						<div class="card-header">Edición de información del Usuario
						</div>
						<div class="card-body">

							<div class="form-group">
								<label class="col-lg-2 control-label">Usuario</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="usuario"
										value="${usuario.usuario }" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Contraseña</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="password"
										value="${usuario.password }" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Rol</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="rol"
										value="${usuario.rol}" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Nombre</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="nombre"
										value="${usuario.nombre }" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Apellido</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="apellido"
										value="${usuario.apellido }" placeholder="">
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