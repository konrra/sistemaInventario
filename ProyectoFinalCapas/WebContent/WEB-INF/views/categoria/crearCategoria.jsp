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

				<body class="body-back">
					<script src="https://code.jquery.com/jquery-latest.min.js"></script>
					<script type="text/javascript"
						src="resources/jquery-ui/jquery-ui.js"></script>
					<form class="form-horizontal" role="form"
						action="${pageContext.request.contextPath}/actualizarCategoria">

						<c:if test="${not empty error}">
							<div class="alert alert-danger alert-dismissible fade show"
								style="margin-right: 60%;" role="alert">
								<strong>Error:</strong>
								<c:out value="${error}" />
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</c:if>

						<div class="card">
							<div class="card-header">Ingreso de informaci&oacute;n de
								la categor&iacute;a</div>
							<div class="card-body">
								<%-- 	  <input type="hidden" name="id_categoria_x_producto" value="${categoriaxproducto.id_categoria_x_producto }" > --%>
								<div style="width: 50%;">
									<div class="form-group">
										<label class="col-sm-3 control-label">Descripci&oacute;n
											*</label>
										<div class="col-sm-7">
											<input type="text" class="form-control" name="descripcion"
												value="${categoriaxproducto.descripcion }">
										</div>
									</div>

								</div>

								<div class="form-group" style="display: none;">
									<label class="col-sm-2 control-label">Estado</label>
									<div class="col-sm-7">
										<select class="form-control" name="estado">
											<option value="A"
												<c:if test="${categoriaxproducto.estado =='A' }">selected</c:if>>Activo</option>

										</select>
									</div>
								</div>
							</div>
							<!-- div que finaliza el body del panel -->
						</div>

						<div class="card-footer">
							<button type="button" class="btn btn-danger"
								onclick="location.href='${pageContext.request.contextPath}/listadoCategoria'">Cancelar</button>
							<button type="submit" class="btn btn-success">Guardar</button>
						</div>
						<!-- div que finaliza el footer del panel -->

					</form>


				</body>


			</div>
		</div>

	</div>
</div>
</body>
</html>