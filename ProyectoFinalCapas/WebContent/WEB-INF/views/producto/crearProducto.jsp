<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creaci&oacute;n de Producto</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/actualizarProducto">
<br>
<br>
<br>
<div class="panel panel-default">
	  <div class="panel-heading">Ingreso de informaci&oacute;n del cliente </div>
	  <div class="panel-body">
	  
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Nombre</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="nombre" value="${producto.nombre }"  placeholder="Pedro Jose" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Costo</label>
	    <div class="col-xs-3">
	      <input type="number" class="form-control" min="0.0" name="costo" value="${producto.costo }" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label  class="col-lg-2 control-label">Precio P&uacute;blico </label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="precio_publico" value="${producto.precio_publico }" >
	    </div>
	     <div class="form-group">
	    <label  class="col-lg-2 control-label">Precio P&uacute;blico </label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="precio_publico" value="${producto.precio_publico }" >
	    </div>
	  </div>
	  
	   <div class="form-group">
	    <label  class="col-lg-2 control-label">Precio Tienda </label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="precio_tienda" value="${producto.precio_tienda }" >
	    </div>
	    </div>
	    
	     <div class="form-group">
	    <label  class="col-lg-2 control-label">Precio Evento </label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="precio_evento" value="${producto.precio_evento }" >
	    </div>
	   <div class="form-group">
	    <label  class="col-lg-2 control-label">Categor&iacute;a Prod.</label>
	    <div class="col-xs-3">
	      <select class="form-control" name="tipo"> 
	      <option value="">Seleccione una categor&iacute;a</option>
	      	<c:forEach items="${comboCategoria}" var="c">
	      		<option value="${c.id_categoria_x_producto }"> <c:out value="${c.descripcion }"></c:out> </option>
	      	</c:forEach>
		  </select>
	    </div>
	  </div>
	    
	    <div class="form-group" style="display:none;">
		    <label  class="col-lg-2 control-label">Estado</label>
		    <div class="col-xs-3">
		    	<select class="form-control" name="estado"> 
		    		<option value="A" <c:if test="${producto.estado =='A' }">selected</c:if>  >Activo</option>
		    		
		    	</select>
		    </div>
	    </div> 
</div> <!-- div que finaliza el body del panel -->
    
  <div class="panel-footer">
	<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/listadoProducto" >Cancelar</button>
	<button type="submit" class="btn btn-success">Guardar</button>
  </div> <!-- div que finaliza el footer del panel -->
  
</form>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>