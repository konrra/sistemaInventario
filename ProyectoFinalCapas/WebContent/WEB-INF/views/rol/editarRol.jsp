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
						action="${pageContext.request.contextPath}/actualizarRol">
					<input type="hidden" name="id_rol" id="id_rol"
						value="${rol.id_rol}">
						
					<div class="card">
						<div class="card-header">Edición de información del Rol
						</div>
						<div class="card-body">
						<div style="width: 50%; float: left;">
							<div class="form-group">
									<label class="col-sm-3 control-label">Descripcion del Rol</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" name="descripcion"
											value="${rol.descripcion }" placeholder="">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Opcion Catalagos</label>
									<div class="col-sm-7">
										<select class="form-control" name="opccatalagos">
											<option value=1
												<c:if test="${rol.opccatalagos ==1 }">selected</c:if>>SI</option>
											<option value=0
												<c:if test="${rol.opccatalagos ==0 }">selected</c:if>>NO</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Opcion Inventario</label>
									<div class="col-sm-7">
										<select class="form-control" name="opcinventario">
											<option value=1
												<c:if test="${rol.opcinventario ==1 }">selected</c:if>>SI</option>
											<option value=0
												<c:if test="${rol.opcinventario ==0 }">selected</c:if>>NO</option>
										</select>
									</div>
								</div>
							</div>
							
							<div style="width: 50%; float: right;">
								<div class="form-group">
									<label class="col-sm-3 control-label">Opcion Factura</label>
									<div class="col-sm-7">
										<select class="form-control" name="opcfactura">
											<option value=1
												<c:if test="${rol.opcfactura ==1 }">selected</c:if>>SI</option>
											<option value=0
												<c:if test="${rol.opcfactura ==0 }">selected</c:if>>NO</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Opcion Seguridad</label>
									<div class="col-sm-7">
										<select class="form-control" name="opcseguridad">
											<option value=1
												<c:if test="${rol.opcseguridad ==1 }">selected</c:if>>SI</option>
											<option value=0
												<c:if test="${rol.opcseguridad ==0 }">selected</c:if>>NO</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!-- div que finaliza el body del panel -->
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-danger"
							onclick="location.href='${pageContext.request.contextPath}/listadoRol'">Cancelar</button>
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