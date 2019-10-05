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

<div class="row div-row">
	<div class="col-xs-* div-row-left">
		<%@ include file="../template/LeftSidebar.jsp"%>
	</div>

	<div class="col-lg-* div-row-right">
		<div class="div-row-right-container"">

			<body>
				<div class="card">
					<div class="card-header">Información del movimientos</div>
					<div class="card-body overflow-auto">

						<table id="tableCli" class="table table-striped table-bordered">
							<thead class="thead-light">
								<tr>
									<th>Tipo</th>
									<th>Producto</th>
									<th>Cantidad</th>
									<th>Cliente</th>
									<th>Lugar</th>
									<th>Tipo Entrada</th>
									<th>Fecha</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${total != 0 }">
									<c:forEach items="${colectionResult}" var="dto">
										<tr>
											<td><c:if test="${dto.tipo  == 'S'}">
													<c:out value="Salida" />
												</c:if> <c:if test="${dto.tipo  == 'E'}">
													<c:out value="Entrada" />
												</c:if></td>
											<td><c:out value="${dto.producto.nombre}" /></td>
											<td><c:out value="${dto.cantidad}" /></td>

											<td><c:out value="${dto.cliente.nombre}" /> <c:if
													test="${dto.cliente.nombre == null}">
													<c:out value="N/A" />
												</c:if></td>

											<td><c:out value="${dto.lugar.descripcion}" /></td>

											<td><c:if test="${dto.tipo_entrada  == 'N'}">
													<c:out value="Nueva Entrada" />
												</c:if> <c:if test="${dto.tipo_entrada  == 'D'}">
													<c:out value="Devolucion" />
												</c:if> <c:if test="${dto.tipo_entrada  == 'A'}">
													<c:out value="Averia" />
												</c:if> <c:if test="${dto.tipo_entrada  == 'C'}">
													<c:out value="Cambio" />
												</c:if> <c:if test="${dto.tipo_entrada  ==  null}">
													<c:out value="N/A" />
												</c:if> <%-- 												<c:out value="${dto.tipo_entrada}" /> --%>



											</td>
											<td><fmt:formatDate value="${dto.fecha}"
													pattern="yyyy/MM/dd" /> <%-- 												<c:out value="${dto.fecha}" /></td> --%>
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
								value="${total }" />
						</label>
					</div>
				</div>


			</body>


		</div>
	</div>

</div>
</body>
</html>