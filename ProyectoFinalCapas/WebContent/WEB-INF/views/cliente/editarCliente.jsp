<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>

<div>
	<div class="row">
		<div class="col-xs-*">
			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*">
			<div class="container" style="margin-left: 10%; margin-top: 5%">


				<body class="body-back">

					<input type="hidden" name="id_cliente" id="id_cliente"
						value="${cliente.id_cliente}">
					<div class="card">
						<div class="card-header">Edición de información del cliente
						</div>
						<div class="card-body">

							<div class="form-group">
								<label class="col-lg-2 control-label">Nombre</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="nombre"
										value="${cliente.nombre }" placeholder="Pedro Jose">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Número teléfono
									celular</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="num_tel_cel"
										value="${cliente.num_tel_cel }" placeholder="61234567">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Número teléfono
									fijo</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="num_tel_fijo"
										value="${cliente.num_tel_fijo }" placeholder="21345678">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">NIT</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="nit"
										value="${cliente.nit }" placeholder="1234-123421-123-2">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">DUI</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" name="dui"
										value="${cliente.dui }" placeholder="1234567-1">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Tipo Cliente</label>
								<div class="col-xs-3">
									<select class="form-control" name="tipo">
										<option value="A"
											<c:if test="${cliente.tipo =='N' }">selected</c:if>>Natural</option>
										<option value="I"
											<c:if test="${cliente.tipo =='J' }">selected</c:if>>Jurídico</option>

									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-lg-2 control-label">Estado</label>
								<div class="col-xs-3">
									<select class="form-control" name="estado">
										<option value="A"
											<c:if test="${cliente.estado =='A' }">selected</c:if>>Activo</option>
										<option value="I"
											<c:if test="${cliente.estado =='I' }">selected</c:if>>Inactivo</option>

									</select>
								</div>
							</div>
						</div>
						<!-- div que finaliza el body del panel -->
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-danger"
							onclick="location.href='${pageContext.request.contextPath}/listadoCliente'">Cancelar</button>
						<button type="submit" class="btn btn-success">Guardar</button>
					</div>
					<!-- div que finaliza el footer del panel -->

					</form>
					<script
						src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


				</body>



			</div>

		</div>
	</div>
	</body>
</html>