<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creacion de Expediente Empleado</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body class="body-back">
<script type="text/javascript" src="resources/jquery-1.12.3.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/jquery-ui/jquery-ui.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="resources/jquery-ui/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/saveAusencia">
</br>
<div class="form-group">
    <div class="col-xs-3">
      <input  type="hidden" value="A" class="form-control" name="tipo_ausencia"   placeholder="Nombre" >
    </div>
  </div>
  
   <div class="form-group">
    <label  class="col-lg-2 control-label">Unidad de Salud</label>
    <div class="col-xs-3">
      <input type="text" class="form-control" name="uni_salud"   placeholder="Nombre" >
    </div>
  </div>
  <div class="form-group">
    <label  class="col-lg-2 control-label">Fecha inicio</label>
    <div class="col-xs-3">
      <input type="text" class="form-control" name="inicioausencia"   placeholder="dd-mm-aaaa" >
    </div>
  </div>
  <div class="form-group">
    <label  class="col-lg-2 control-label">Fecha Fin</label>
    <div class="col-xs-3">
      <input type="date" class="form-control" name="finausencia"   placeholder="dd-mm-aaaa" >
    </div>
  </div>
  
  
  <div class="form-inline">
	  <div class="form-group">
	    <div class="col-lg-offset-2 col-lg-10">
	      <button type="submit" class="btn btn-success">Guardar</button>
	    </div>
	  </div>
	  
	  </form>
	  
  </div>



</body>
</html>