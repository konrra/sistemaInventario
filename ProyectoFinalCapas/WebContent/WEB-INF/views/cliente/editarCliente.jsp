<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creacion de Expediente Empleado</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/actualizarCliente">
<br>
<br>
<br>
<input type="hidden" name="id_cliente" id="id_cliente" value="${cliente.id_cliente}">
<div class="card">
	  <div class="card-header">Edición de información del cliente </div>
	  <div class="card-body">
	  
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Nombre</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="nombre" value="${cliente.nombre }"  placeholder="Pedro Jose" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Número teléfono celular</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="num_tel_cel" value="${cliente.num_tel_cel }"  placeholder="61234567" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label  class="col-lg-2 control-label">Número teléfono fijo</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="num_tel_fijo" value="${cliente.num_tel_fijo }"  placeholder="21345678" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label  class="col-lg-2 control-label">NIT</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="nit" value="${cliente.nit }"  placeholder="1234-123421-123-2" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label  class="col-lg-2 control-label">DUI</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="dui" value="${cliente.dui }"   placeholder="1234567-1" >
	    </div>
	    </div>
	    <div class="form-group">
		    <label  class="col-lg-2 control-label">Tipo Cliente</label>
		    <div class="col-xs-3">
		    	<select class="form-control" name="tipo"> 
		    		<option value="A" <c:if test="${cliente.tipo =='A' }">selected</c:if>  >Público</option>
		    		<option value="A" <c:if test="${cliente.tipo =='A' }">selected</c:if>  >Activo</option>		    				    		
		    		<option value="I" <c:if test="${cliente.tipo =='I' }">selected</c:if>  >Inactivo</option>
		    		
		    	</select>
		    </div>
	    </div>
	    
	    <div class="form-group">
		    <label  class="col-lg-2 control-label">Estado</label>
		    <div class="col-xs-3">
		    	<select class="form-control" name="estado"> 
		    		<option value="A" <c:if test="${cliente.estado =='A' }">selected</c:if>  >Activo</option>
		    		<option value="I" <c:if test="${cliente.estado =='I' }">selected</c:if>  >Inactivo</option>
		    		
		    	</select>
		    </div>
	    </div> 
</div> <!-- div que finaliza el body del panel -->
</div>
  <div class="card-footer">
	<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/listadoCliente'" >Cancelar</button>
	<button type="submit" class="btn btn-success">Guardar</button>
  </div> <!-- div que finaliza el footer del panel -->
  
</form>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>