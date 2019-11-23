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
<body class="body-back">
<div class="row div-row">

	<div class="col-xs-* div-row-left">
		<%@ include file="../template/LeftSidebar.jsp"%>
	</div>
	
	<div class="col-lg-* div-row-right">
		<div class=" div-row-right-container">
		
			
				<div class="card">
				
					<div class="card-header">
						Edición de informaci&oacute;n del Cliente
						<button type="button" style="float: right;"
							class="btn btn-success btn-sm"
							onclick="location.href='${pageContext.request.contextPath}/crearCliente'">Agregar
							+</button>
					</div>
					
					<div class="card-body">
						<table id="tableCli" class="table table-striped table-bordered">

							<thead class="thead-light">
								<tr id="tabletr">
									<th style="width: 30%;">Nombre Cliente/Proveedor</th>
									<th>Tipo</th>
									<th>Nit</th>
									<th>Num. 1</th>
<!-- 									<th>Num. 2</th> -->
									<th>Correo</th>
<!-- 									<th>Contacto</th> -->
									<th><span class="glyphicon glyphicon-cog"> </span></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${total != 0 }">
									<c:forEach items="${colectionResult}" var="dto">
										<tr  <c:if test="${dto.es_proveedor == 'S' }">  style="background: cadetblue;" </c:if> >
											<td><c:out value="${dto.nombre}" /></td>
											<td><c:if test="${dto.tipo == 'N'}">
													<c:out value="Natural"></c:out>
												</c:if> <c:if test="${dto.tipo == 'J'}">
													<c:out value="Juridico"></c:out>
												</c:if></td>
											<td><c:out value="${dto.nit}" /></td>
											<td><c:out value="${dto.num_tel_cel}" /></td>
<%-- 											<td><c:out value="${dto.num_tel_fijo}" /></td> --%>
											<td><c:out value="${dto.correo}" /></td>
<%-- 											<td><c:out value="${dto.contacto}" /></td> --%>
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
				</div>
			
		</div>
	</div>
</div>
</body>
</html>