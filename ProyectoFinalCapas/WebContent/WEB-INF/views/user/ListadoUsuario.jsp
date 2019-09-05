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
		<div class="div-row-right-container">
			<body>
				<div class="card height-div-table">
					<div class="card-header">
						Edición de informaci&oacute;n del Usuario
						<button type="button" style="float: right;"
							class="btn btn-success btn-sm"
							onclick="location.href='${pageContext.request.contextPath}/crearUsuario'">Agregar
							+</button>
					</div>
					<div class="card-body overflow-auto">
						<table id="tableCli" class="table table-striped table-bordered">
							<thead class="thead-light">
								<tr>
									<th>Usuario</th>
									<th>Password</th>
									<th>Rol</th>
									<th>Nombre</th>
									<th>Apellido</th>
									<th><span class="glyphicon glyphicon-cog"> </span></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${total != 0 }">
									<c:forEach items="${colectionResult}" var="dto">
										<tr>
											<td><c:out value="${dto.usuario}" /></td>
											<td><c:out value="${dto.password}" /></td>
											<td><c:out value="${dto.rol}" /></td>
											<td><c:out value="${dto.nombre}" /></td>
											<td><c:out value="${dto.apellido}" /></td>
											<td align=Right>
												<button type="button" class="btn btn-info btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/editarUsuario?id_usuario=${dto.id_usuario}'">
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



</html>