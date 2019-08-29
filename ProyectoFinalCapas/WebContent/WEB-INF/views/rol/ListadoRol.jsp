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
		<div class="row" style="height:100vh; background-color: white;" >
		<div class="col-xs-*" style="background-color: black;" >
				<%@ include file="../template/LeftSidebar.jsp"%>
			</div>
	
			<div class="col-lg-*" style="width: 75%; background-color: white;">
				<div class="container" style="margin-left: 2%; margin-top: 2%">
					<body>
						<div class="card height-div-table">
							<div class="card-header">
								Informaci&oacute;n de los Roles
								<button type="button" style="float: right;"
									class="btn btn-success btn-sm"
									onclick="location.href='${pageContext.request.contextPath}/crearRol'">Agregar
									+</button>
							</div>
							<div class="card-body overflow-auto">
								<table class="table table-sm table-bordere table-hover table-bordered">
									<thead class="thead-light">
										<tr>
											<th>ID</th>
											<th>Descripcion</th>
											<th>Opcion Catalogos</th>
											<th>Opcion Inventario</th>
											<th>Opcion Factura</th>
											<th>Opcion Seguridad</th>
											<th><span class="glyphicon glyphicon-cog"> </span></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${total != 0 }">
											<c:forEach items="${listRol}" var="dto">
												<tr>
													<td><c:out value="${dto.id_rol}" /></td>
													<td><c:out value="${dto.descripcion}" /></td>
													<td>
														<c:if test="${dto.opccatalagos == 1}"><c:out value="SI"></c:out></c:if> 
														<c:if test="${dto.opccatalagos == 0}"> <c:out value="NO"></c:out>	</c:if>
													</td>
													<td>
														<c:if test="${dto.opcinventario == 1}"><c:out value="SI"></c:out></c:if> 
														<c:if test="${dto.opcinventario == 0}"> <c:out value="NO"></c:out>	</c:if>
													</td>
													<td>
														<c:if test="${dto.opcfactura == 1}"><c:out value="SI"></c:out></c:if> 
														<c:if test="${dto.opcfactura == 0}"> <c:out value="NO"></c:out>	</c:if>
													</td>
													<td>
														<c:if test="${dto.opcseguridad == 1}"><c:out value="SI"></c:out></c:if> 
														<c:if test="${dto.opcseguridad == 0}"> <c:out value="NO"></c:out>	</c:if>
													</td>
													
													<td align=Right>
														<button type="button" class="btn btn-info btn-sm"
															onclick="location.href='${pageContext.request.contextPath}/editarRol?id_rol=${dto.id_rol}'">
															Editar</button>
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
						</div>	
					</body>
					</div>
				</div>
			</div>
	
		</div>
	

</html>