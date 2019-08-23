<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

				<body>
					<div class="card">
						<div class="card-header">
							Información del producto
						</div>
						<div class="card-body overflow-auto">

							<table class="table table-sm table-bordere table-hover table-bordered">
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
												<td><c:out value="${dto.costo}" /></td>
												<td><c:out value="${dto.precio_publico}" /></td>
												<td><c:out value="${dto.precio_tienda}" /></td>
												<td><c:out value="${dto.precio_evento}" /></td>
												<td><c:out
														value="${dto.categoriaxproducto.descripcion}" /></td>
												<td><c:if test="${dto.estado == 'A'}">
														<c:out value="Activo"></c:out>
													</c:if> <c:if test="${dto.estado == 'I'}">
														<c:out value="Inactivo"></c:out>
													</c:if></td>
												<td align=Right><input type="button"
													class="btn btn-info btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/crearEntrada?idProducto=${dto.id_producto}'"
													value="Seleccionar" /></td>
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
							<label style="float: right;"> La cantidad de registros:
								<c:out value="${total }" />
							</label>
						</div>
					</div>


				</body>


			</div>
		</div>

	</div>
</div>
</body>
</html>