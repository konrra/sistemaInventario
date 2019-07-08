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
		<div class="row">
			<div class="col-xs-*">
				<%@ include file="../template/LeftSidebar.jsp"%>
			</div>
	
			<div class="col-lg-*">
				<div class="container" style="margin-left: 10%; margin-top: 5%">
					<body>
						<div class="card">
							<div class="card-header">
								Edición de informaci&oacute;n del Usuario
								<button type="button" style="float: right;"
									class="btn btn-success btn-sm"
									onclick="location.href='${pageContext.request.contextPath}/crearCliente'">Agregar
									+</button>
							</div>
							<div class="card-body overflow-auto">
								
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
</body>
</html>