<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edici&oacute;n de Origen/Destino</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/actualizarLugar">
<br>
<br>
<br>
<div class="panel panel-default">
	  <div class="panel-heading">Ingreso de informaci&oacute;n del cliente </div>
	  <div class="panel-body">
	  
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Descripci&oacute;n</label>
	    <div class="col-xs-3">
	      <input type="text" class="form-control" name="nombre" value="${lugar.descripcion }" >
	    </div>
	  </div>
	    
	    <div class="form-group" style="display:none;">
		    <label  class="col-lg-2 control-label">Estado</label>
		    <div class="col-xs-3">
		    	<select class="form-control" name="estado"> 
		    		<option value="A" <c:if test="${lugar.estado =='A' }">selected</c:if>  >Activo</option>
		    		
		    	</select>
		    </div>
	    </div> 
</div> <!-- div que finaliza el body del panel -->
</div>
    
  <div class="panel-footer">
	<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/listadoLugar" >Cancelar</button>
	<button type="submit" class="btn btn-success">Guardar</button>
  </div> <!-- div que finaliza el footer del panel -->
  
</form>


</body>
</html>