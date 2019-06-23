<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
  $(document).ready(function(){ 
	$('.solo-numero').numeric();
   });
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creaci&oacute;n de Producto</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> -->
<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/actualizarProducto">
<br>
<br>
<br>
<div class="card">
	  <div class="card-header">Ingreso de informaci&oacute;n del producto </div>
	  <div class="card-body">
	  
	  <div style="width: 50%; float: left;" >
	  
	  <div class="form-group">
	    <label  class="col-sm-2 control-label">Nombre</label>
	    <div class="col-sm-7">
	      <input type="text" class="form-control" name="nombre" value="${producto.nombre }" >
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label  class="col-sm-2 control-label">Costo</label>
	    <div class="col-sm-7">
	      <input type="text" alt="numeric" class="form-control"   name="costo" value="${producto.costo }" >
	    </div>
	  </div>
	  
	   <div class="form-group">
	    <label  class="col-sm-2 control-label">Precio P&uacute;blico </label>
	    <div class="col-sm-7">
	      <input class="form-control" tabindex="5" type="text" alt="numeric" id="precio_publico" name="precio_publico"  value="${producto.precio_publico}" maxlength="15"/>
	    </div>
	  </div>
	  
	  </div>
	  <div style="width: 50%; float: right;" >
	  
	   <div class="form-group">
	    <label  class="col-sm-2 control-label">Precio Tienda </label>
	    <div class="col-sm-7">
	      <input type="text" class="form-control" name="precio_tienda" value="${producto.precio_tienda }" >
	    </div>
	    </div>
	    
	     <div class="form-group">
	    <label  class="col-sm-2 control-label">Precio Evento </label>
	    <div class="col-sm-7">
	      <input type="text" class="form-control" name="precio_evento" value="${producto.precio_evento }" >
	    </div>
	    
	   <div class="form-group">
	    <label  class="col-sm-2 control-label">Categor&iacute;a Prod.</label>
	    <div class="col-sm-7">
	      <select class="form-control" name="tipo"> 
	      <option value="">Seleccione una categor&iacute;a</option>
	      	<c:forEach items="${comboCategoria}" var="c">
	      		<option value="${c.id_categoria_x_producto }"  <c:if test="${c.id_categoria_x_producto == producto.categoriaxproducto.id_categoria_x_producto }">selected</c:if>  ><c:out value="${c.descripcion }"></c:out> </option>
	      	</c:forEach>
		  </select>
	    </div>
	  </div>
	  </div>
	    <div class="form-group" style="display:none;">
		    <label  class="col-sm-2 control-label">Estado</label>
		    <div class="col-sm-7">
		    	<select class="form-control" name="estado"> 
		    		<option value="A" <c:if test="${producto.estado =='A' }">selected</c:if>  >Activo</option>
		    		
		    	</select>
		    </div>
	    </div> 
</div> <!-- div que finaliza el body del panel -->
</div>
  <div class="card-footer">
	<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/listadoProducto" >Cancelar</button>
	<button type="submit" class="btn btn-success">Guardar</button>
  </div> <!-- div que finaliza el footer del panel -->
  </div>
</form>
<!-- <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->


</body>
</html>