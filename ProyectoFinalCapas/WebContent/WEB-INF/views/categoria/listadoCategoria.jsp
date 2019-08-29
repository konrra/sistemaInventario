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

		<div class="col-lg-*" style="width: 75%" >
			<div class="container" style="margin-left: 2%; margin-top: 2%">

				<body class="body-back">
					<div class="card height-div-table">
						<div class="card-header">
							Edición de información de las categor&iacute;as
							<button style="float: right;" type="button"
								class="btn btn-success btn-sm"
								onclick="location.href='${pageContext.request.contextPath}/crearCategoria'">Agregar
								+</button>
						</div>
						<div class="card-body">
							<table class="table table-sm table-bordere table-hover table-bordered">
								<thead class="thead-light">
									<tr>
										<th>Descripci&oacute;n</th>
										<th>Estado</th>
										<th><span class="glyphicon glyphicon-cog"> </span></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${total != 0 }">
										<c:forEach items="${colectionResult}" var="dto">
											<tr>
												<td><c:out value="${dto.descripcion}" /></td>
												<td><c:if test="${dto.estado == 'A'}">
														<c:out value="Activo"></c:out>
													</c:if> <c:if test="${dto.estado == 'I'}">
														<c:out value="Inactivo"></c:out>
													</c:if></td>
												<td align=Right><input type="button"
													class="btn btn-info btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/editarCategoria?id_categoria_x_producto=${dto.id_categoria_x_producto}'"
													value="Editar" /> <input type="button"
													class="btn btn-danger btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/eliminarCategoria?id_categoria_x_producto=${dto.id_categoria_x_producto}'"
													value="Inactivar" /></td>
											</tr>
										</c:forEach>
									</c:if>
									<c:if test="${total == 0 }">
										<tr>
											<td align="center" style="font-style: italic;" colspan="7">No
												hay registros que mostrar</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>
						<div class="card-footer text-muted">
							<label style="float: right;"> La cantidad de registros: <c:out
									value="${total }" /></label>
						</div>
					</div>
					<!-- <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->


				</body>


			</div>
		</div>

	</div>
</div>
</body>
</html>