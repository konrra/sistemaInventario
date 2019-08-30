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

	<div >
		<div class="row" style="height:100vh; background-color: white;" >
		<div class="col-xs-*" style="background-color: black;" >
				<%@ include file="../template/LeftSidebar.jsp"%>
			</div>
			
	
			<div class="col-lg-*" style="width: 75%; background-color: white;">
				<div class="container" style="margin-left: 2%; margin-top: 2%">
					<body class="body-back">
						<div class="card height-div-table">
							<div class="card-header">
								Stock disponible
							</div>
							<div class="card-body ">
							<div class="table-wrapper-scroll-y my-custom-scrollbar">
								<table class="table table-sm table-bordere table-hover table-bordered">
									<thead class="thead-light">
										<tr>
											<th>id Producto</th>
											<th>Fecha Actualizacion</th>
											<th>Descripcion</th>
											<th>Cantidad</th>
											<th><span class="glyphicon glyphicon-cog"> </span></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${total != 0 }">
											<c:forEach items="${colectionResult}" var="dto">
												<tr>
													<td><c:out value="${dto.id_producto}" /></td>
													<td><c:out value="${dto.getFechaActualizacion()}" /></td> 
													<td><c:out value="${dto.descripcion}" /></td>
													<td><c:out value="${dto.cantidad}" /></td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${total == 0 }">
											<tr>
												<td align="center" style="font-style: italic;" colspan="7">No
													hay registro de productos</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							
							</div>
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