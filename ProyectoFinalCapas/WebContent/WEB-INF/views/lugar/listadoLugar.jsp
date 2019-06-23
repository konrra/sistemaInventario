<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<div class="card">
	  <div class="card-header">Edición de información de Origen/Destino
	  	<button style="float: right;" type="button" class="btn btn-success btn-sm" onclick="location.href='${pageContext.request.contextPath}/crearCategoria'" >Agregar +</button>
	  </div>
	  <div class="card-body">
  <table class="table table-sm table-bordere table-hover">
    <thead class="thead-light">
      <tr>
        <th>Descripci&oacute;n</th>
        <th>Estado </th>
      </tr>
    </thead>
    <tbody>
    <c:if test="${total != 0 }">
    <c:forEach items="${colectionResult}" var="dto">
	      <tr>
	        <td> <c:out value="${dto.descripcion}"/> </td>
	        <td>
	        	<c:if test="${dto.estado == 'A'}"><c:out value="Activo"></c:out></c:if>
	        	<c:if test="${dto.estado == 'I'}"><c:out value="Inactivo"></c:out> </c:if>
	        </td>
	        <td><input type="button" class="btn btn-info btn-sm" onclick="location.href='${pageContext.request.contextPath}/editarCategoria?id_lugar=${dto.id_lugar}'" value="Editar" />
	        <td><input type="button" class="btn btn-danger btn-sm" onclick="location.href='${pageContext.request.contextPath}/eliminarCategoria?id_lugar=${dto.id_lugar}'" value="Inactivar" /></td>
	      </tr>
      </c:forEach>
      </c:if>
      <c:if test="${total == 0 }">
      <tr>
      	<td align="center" style="font-style: italic; " colspan="7">No hay registros que mostrar </td>
      </tr>
      </c:if>
    </tbody>
  </table>
  </div>
<div class="card-footer text-muted">
  <label style="float: right;"> La cantidad de registros: <c:out value="${total }"/></label>
  </div>
</div>
<!-- <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->


</body>
</html>