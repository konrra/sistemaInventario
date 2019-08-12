<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>

<div>
<script type="text/javascript">
$(document).ready(function() {
	
} );

</script>

	<div class="row">
		<div class="col-xs-*">
			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*">
			<div class="container" style="margin-left: 10%; margin-top: 5%">

				<body class="body-back">
				
					<div class="card">
						<div class="card-header">
							Edición de información del producto
							<button type="button" style="float: right;"
								class="btn btn-success btn-sm"
								onclick="location.href='${pageContext.request.contextPath}/crearProducto'">Agregar
								+</button>
						</div>
						<div class="card-body">

							<table id="tablePro" class="table table-sm table-bordere table-hover">
								<thead class="thead-light">
									<tr>
										<th>Descripci&oacute;n</th>
										<th>Costo</th>
										<th>Precio P&uacute;blico</th>
										<th>Precio Tienda</th>
										<th>Precio Evento</th>
										<th>Categor&iacute;a</th>
										<th>Estado</th>
										<th><span class="glyphicon glyphicon-cog"> </span></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${total != 0 }">
										<c:forEach items="${colectionResult}" var="dto">
											<tr>
												<td><c:out value="${dto.nombre}" /></td>
												<td  align=Right> <c:if test="${empty dto.costo }">-</c:if> <c:if test="${not empty dto.costo}">$</c:if> <c:out value="${dto.costo}" /></td>
												<td  align=Right><c:if test="${empty dto.precio_publico}">-</c:if> <c:if test="${not empty dto.precio_publico}">$</c:if><c:out value="${dto.precio_publico}" /></td>
												<td  align=Right><c:if test="${empty dto.precio_tienda}">-</c:if> <c:if test="${not empty dto.precio_tienda}">$</c:if><c:out value="${dto.precio_tienda}" /></td>
												<td  align=Right><c:if test="${empty dto.precio_evento}">-</c:if> <c:if test="${not empty dto.precio_evento}">$</c:if><c:out value="${dto.precio_evento}" /></td>
												<td><c:out	value="${dto.categoriaxproducto.descripcion}" /></td>
												<td>
													<c:if test="${dto.estado == 'A'}">	<c:out value="Activo"></c:out></c:if> 
													<c:if test="${dto.estado == 'I'}"> <c:out value="Inactivo"></c:out></c:if>
												</td>
												<td align=Right>
													<input type="button" class="btn btn-info btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/editarProducto?id_producto=${dto.id_producto}'"	value="Editar" /> 
													<input type="button"	class="btn btn-danger btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/eliminarProducto?id_producto=${dto.id_producto}'" value="Inactivar" />
												</td>
											</tr>
										</c:forEach>
									</c:if>
									<c:if test="${total == 0 }">
										<tr>
											<td align="center" style="font-style: italic;" colspan="7">
												No hay registros que mostrar
											</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>
						<div class="card-footer text-muted">
							<label style="float: right;"> La cantidad de registros:	<c:out value="${total }" /></label>
						</div>
					</div>


				</body>


			</div>
		</div>

	</div>
</div>
</body>
</html>