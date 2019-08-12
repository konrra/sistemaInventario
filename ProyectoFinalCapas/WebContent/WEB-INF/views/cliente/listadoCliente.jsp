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
		<div class="row" style="height:100vh;">
		<div class="col-xs-*" style="background-color: black;" >
				<%@ include file="../template/LeftSidebar.jsp"%>
			</div>
	
			<div class="col-lg-*">
				<div class="container" style="margin-left: 10%; margin-top: 5%">
					<body>
						<div class="card">
							<div class="card-header">
								Edición de informaci&oacute;n del Cliente
								<button type="button" style="float: right;"
									class="btn btn-success btn-sm"
									onclick="location.href='${pageContext.request.contextPath}/crearCliente'">Agregar
									+</button>
							</div>
							<div class="card-body overflow-auto">
								<table class="table table-sm table-bordere table-hover">
									<thead class="thead-light">
										<tr>
											<th>Nombre</th>
											<th>Tipo</th>
											<th>Nit</th>
											<th>N&uacute;mero cel.</th>
											<th>N&uacute;mero fijo</th>
											<th>Dui</th>
											<th>Estado</th>
											<th><span class="glyphicon glyphicon-cog"> </span></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${total != 0 }">
											<c:forEach items="${colectionResult}" var="dto">
												<tr>
													<td><c:out value="${dto.nombre}" /></td>
													<td><c:if test="${dto.tipo == 'N'}">
															<c:out value="Natural"></c:out>
														</c:if> <c:if test="${dto.tipo == 'J'}">
															<c:out value="Jur&iacute;dico"></c:out>
														</c:if></td>
													<td><c:out value="${dto.nit}" /></td>
													<td><c:out value="${dto.num_tel_cel}" /></td>
													<td><c:out value="${dto.num_tel_fijo}" /></td>
													<td><c:out value="${dto.dui}" /></td>
													<td><c:if test="${dto.estado == 'A'}">
															<c:out value="Activo"></c:out>
														</c:if> <c:if test="${dto.estado == 'I'}">
															<c:out value="Inactivo"></c:out>
														</c:if></td>
													<td align=Right>
														<button type="button" class="btn btn-info btn-sm"
															onclick="location.href='${pageContext.request.contextPath}/editarCliente?id_cliente=${dto.id_cliente}'">
															Editar</button>
														<button type="button" class="btn btn-danger btn-sm"
															onclick="location.href='${pageContext.request.contextPath}/eliminarCliente?id_cliente=${dto.id_cliente}'">
															Inactivar</button>
													</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${total == 0 }">
											<tr>
												<td align="center" style="font-style: italic;" colspan="7">No
													hay registros que mostrar aqui</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>
							<div class="card-footer text-muted">
								<label style="float: right;"> La cantidad de registros: <c:out
										value="${total }" /></label>
							</div>
					</body>
				</div>
			</div>
	
		</div>
	</div>
</html>