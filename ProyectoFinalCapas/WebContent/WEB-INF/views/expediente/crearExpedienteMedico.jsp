<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creacion de Expediente Empleado</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script src="<c:url value="/resources/js/jquery.1.12.3.min.js" />"></script>
<label>Ingrese los datos sugeridos</label>
<form  class="form-horizontal" role="form" action="${pageContext.request.contextPath}/saveExpedienteMed">
</br>
<div class="form-group">
	    <label  class="col-lg-2 control-label">Codigo</label>
	    <div class="col-xs-4">
	      <input type="text" class="form-control" name="idexp"   placeholder="Nombre" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Codigo Empleado</label>
	    <div class="col-xs-4">
	      <input type="text" class="form-control" name="id_empleado"   placeholder="Nombre" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Alergia</label>
	    <div class="col-xs-4">
	      <input type="text" class="form-control" name="descripcion"   placeholder="Alergia" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-lg-2 control-label">Nombre Medicamento</label>
	    <div class="col-xs-4">
	      <input type="text" class="form-control" name="n_medicamento"   placeholder="Nombre" >
	    </div>
	  </div>
<!-- 	  <div class="form-group"> -->
<!-- 	    <label  class="col-lg-2 control-label">Nombre Medicamento</label> -->
<!-- 	    <div class="col-xs-4"> -->
<!-- 	      <textarea  class="form-control" name="nomMedicamento"   placeholder="Nombre" > -->
<!-- 	    </div> -->
<!-- 	  </div> -->
	 <div class="form-group">
	 <label class="col-lg-2 control-label">Razon Medicamento:</label>
	  	<div class="col-lg-3 control-label">
  		<textarea class="form-control " name="razon"></textarea>
  		</div>
  	</div>	
  <div class="form-inline">
	  <div class="form-group">
	    <div class="col-lg-offset-2 col-lg-10">
	      <button type="submit" class="btn btn-success">Guardar</button>
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="col-lg-offset-2 col-lg-10">
	      <button type="submit" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/'" >Salir</button>
	    </div>
	  </div>
	  
  </div>
</form>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script> -->

</body>
</html>