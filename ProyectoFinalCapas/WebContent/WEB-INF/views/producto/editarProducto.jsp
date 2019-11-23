<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>

<script type="text/javascript">
	$(document).ready(function(){
		$('.dinero').mask("#,##0.00", {reverse: true});
	});
</script>
<div>
	<div class="row" style="height:100vh; background-color: white;">
		<div class="col-xs-*" style="background-color: black;" >
			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*" style="width: 75%">
			<div class="container" style="margin-left: 2%; margin-top: 2%">
			
				<input type="hidden" name="paginaEditar" id="paginaEditar" value="S" />

				<body class="body-back">
					<script src="https://code.jquery.com/jquery-latest.min.js"></script>
					<script type="text/javascript"
						src="resources/jquery-ui/jquery-ui.js"></script>
					<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/actualizarProducto">
						<br>
						<c:if test="${not empty error}">
							<div class="alert alert-danger alert-dismissible fade show" role="alert">
								<strong>Error:</strong>
								<c:out value="${error}" />
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</c:if>
						
						<div class="card">
							<div class="card-header">Ingreso de informaci&oacute;n del
								producto</div>
							<div class="card-body form-horizontal">
								<div>
										<span style="font-size: small;color:#ff0000;">-Los campos marcados con * son obligatorios</span>
								</div>
								<div style="width: 50%; float: left;">
									<input type="hidden" name="id_producto"
										value="${producto.id_producto }">
									
									<div class="form-group">
										<label class="col-sm-3 control-label">C&oacute;digo*</label>
										<div class="col-sm-7">
											<input type="text" class="form-control" name="codigo"
												value="${producto.codigo }">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-4 control-label">Producto*</label>
										<div class="col-sm-7">
											<input type="text" class="form-control" name="nombre"
												value="${producto.nombre }">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Costo*</label>
										<div class="col-sm-7">
											<input type="text"  class="form-control dinero"
												name="costo" value="${producto.costo }">
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label">Estado</label>
										<div class="col-sm-7">
											<select class="form-control" name="estado">
												<option value="A"
													<c:if test="${producto.estado =='A' }">selected</c:if>>Activo</option>
												<option value="I"
													<c:if test="${producto.estado =='I' }">selected</c:if>>Inactivo</option>

											</select>
										</div>
									</div>

								</div>
								<div style="width: 50%; float: right;">
								
									<div class="form-group">
										<label class="col-sm-5 control-label">Precio Venta*</label>
										<div class="col-sm-7">
											<input class="form-control dinero" tabindex="5" type="text"
												 id="precio_publico" name="precio_publico"
												value="${producto.precio_publico}" maxlength="15" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-4 control-label">Precio Tienda </label>
										<div class="col-sm-7">
											<input type="text" class="form-control dinero" name="precio_tienda"
												value="${producto.precio_tienda }">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-4 control-label">Precio Evento </label>
										<div class="col-sm-7">
											<input type="text" class="form-control dinero" name="precio_evento"
												value="${producto.precio_evento }">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-5 control-label">Categor&iacute;a
											Prod. *</label>
										<div class="col-sm-7">
											<select class="form-control" name="id_categoria_x_producto">
												<option value="">Seleccione una categor&iacute;a</option>
												<c:forEach items="${comboCategoria}" var="c">
													<option value="${c.id_categoria_x_producto }"
														<c:if test="${c.id_categoria_x_producto == producto.categoriaxproducto.id_categoria_x_producto }">selected</c:if>><c:out
															value="${c.descripcion }"></c:out>
													</option>
												</c:forEach>
											</select>
										</div>
									</div>

									
								</div>
							</div>
							<div class="card-footer">
								<button type="button" class="btn btn-danger"
									onclick="location.href='${pageContext.request.contextPath}/listadoProducto'">Cancelar</button>
								<button type="submit" class="btn btn-success">Guardar</button>
							</div>
						</div>
						<!-- div que finaliza el footer del panel -->
					</form>


				</body>


			</div>
		</div>

	</div>
</div>
</html>