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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<%-- <form:input type="hidden" id="id_empleado" path="id_empleado" /> --%>
<br>
<br>
<br>
<div class="panel panel-default">
	  <div class="panel-heading">Edición de información del producto </div>
	  <div class="panel-body">
	  
	  <br>
	  <button type="button" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/crearProducto'" >Agregar</button>
	  <br>
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Descripci&oacute;n</th>
        <th>Costo </th>
        <th>Precio P&uacute;blico</th>
        <th>Precio Tienda</th>
        <th>Precio Evento</th>
        <th>Categor&iacute;a</th>
        <th>Estado</th>
      </tr>
    </thead>
    <tbody>
    <c:if test="${total != 0 }">
    <c:forEach items="${colectionResult}" var="dto">
	      <tr>
	        <td> <c:out value="${dto.nombre}"/> </td>
	        <td><c:out value="${dto.costo}"/></td>
	        <td><c:out value="${dto.precio_publico}"/></td>
	        <td><c:out value="${dto.precio_tienda}"/></td>
	        <td><c:out value="${dto.precio_evento}"/></td>
	        <td><c:out value="${dto.categoriaxproducto.descripcion}"/></td>
	        <td>
	        	<c:if test="${dto.estado == 'A'}"><c:out value="Activo"></c:out></c:if>
	        	<c:if test="${dto.estado == 'I'}"><c:out value="Inactivo"></c:out> </c:if>
	        </td>
	        <td><input type="button" class="myButton" onclick="location.href='${pageContext.request.contextPath}/editarProducto?id_producto=${dto.id_producto}'" value="Editar" />
	        <td><input type="button" class="btnEliminar" onclick="location.href='${pageContext.request.contextPath}/eliminarProducto?id_producto=${dto.id_producto}'" value="Inactivar" /></td>
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
<div class="panel-footer">
  <strong> La cantidad de registros es de  <c:out value="${total }"/></strong>
  </div>
</div>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>