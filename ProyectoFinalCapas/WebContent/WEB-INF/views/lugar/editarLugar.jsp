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
<c:if test="${not empty error}">
	<div class="alert alert-danger alert-dismissible fade show" style="margin-right: 60%;" role="alert">
	  <strong>Error:</strong> <c:out value="${error}"/>
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
</c:if>
<div class="card">
	  <div class="card-header">Ingreso de informaci&oacute;n del destino/origen </div>
	  <div class="card-body">
	  <input type="hidden" name="id_lugar" id="id_lugar" value="${lugar.id_lugar }" />
	  <div class="form-group">
	    <label  class="col-sm-3 control-label">Descripci&oacute;n</label>
	    <div class="col-sm-7">
	      <input type="text" class="form-control" name="descripcion" value="${lugar.descripcion }" >
	    </div>
	  </div>
	    
	    <div class="form-group" style="display:none;">
		    <label  class="col-sm-2 control-label">Estado</label>
		    <div class="col-sm-7">
		    	<select class="form-control" name="estado"> 
		    		<option value="A" <c:if test="${lugar.estado =='A' }">selected</c:if>  >Activo</option>
		    		
		    	</select>
		    </div>
	    </div> 
</div> <!-- div que finaliza el body del panel -->
</div>
    
  <div class="card-footer">
	<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/listadoLugar'" >Cancelar</button>
	<button type="submit" class="btn btn-success">Guardar</button>
  </div> <!-- div que finaliza el footer del panel -->
  
</form>


</body>
</html>