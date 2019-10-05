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
			<body class="body-back">
				<div class="card ">
					<div class="card-header">Stock disponible</div>

					<div class="card-body ">
						<table id="tableStock" class="table table-striped table-bordered">
							<thead class="thead-light">
								<tr>
									<th>Codigo Producto</th>
									<th>Descripcion</th>
									<th>Fecha Actualizacion</th>
									<th>Cantidad</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${total != 0 }">
									<c:forEach items="${colectionResult}" var="dto">
										<tr>
											<td><c:out value="${dto.codigo}" /></td>
											<td><c:out value="${dto.descripcion}" /></td>
											<td><c:out value="${dto.fecha_actualizacion}" /></td>
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