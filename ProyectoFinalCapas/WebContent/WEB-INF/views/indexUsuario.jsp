<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema Administrativo</title>
<link href = "resources/css/bootstrap.min.css" rel = "stylesheet">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body class="body-back">
	<c:if test="${user.usuario !=null}">
    <div> <h2>Bienvenido <c:out value="${user.usuario}"></c:out></h2></div>
</c:if>
	
	
	<br>

<div class="btn-group">
  <button type="button" class="btn btn-primary btn-default dropdown-toggle"
          data-toggle="dropdown">Solicitar<span class="caret"></span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
  	 <form name="form1" method="post" action="${pageContext.request.contextPath}/crearAusencia" >
    <input type="hidden" name="usuario" value="${user.usuario}" />
   <li><a href="#" onclick="$(this).closest('form').submit()">crear ausencia</a> </li>
  
</form>

	<form name="form1" method="post" action="${pageContext.request.contextPath}/crearAusenciaMed" >
    <input type="hidden" name="usuario" value="${user.usuario}" />
   <li><a href="#" onclick="$(this).closest('form').submit()">crear ausencia medica</a> </li>
  
</form>
  
  </ul>
</div>

<div class="btn-group">
  <button type="button" class="btn btn-info btn-default dropdown-toggle"
          data-toggle="dropdown">Verificar<span class="caret"></span>
  </button>
 
  <ul class="dropdown-menu" role="menu">
        <form name="form1" method="post" action="${pageContext.request.contextPath}/listadoAucM" >
    <input type="hidden" name="usuario" value="${user.usuario}" />
   <li><a href="#" onclick="$(this).closest('form').submit()">ver Ausencia Medica</a> </li>
  
</form>

 <form name="form1" method="post" action="${pageContext.request.contextPath}/listadoAucO" >
    <input type="hidden" name="usuario" value="${user.usuario}" />
   <li><a href="#" onclick="$(this).closest('form').submit()">ver Ausencia</a> </li>
  
</form>

<form name="form1" method="post" action="${pageContext.request.contextPath}/verExp" >
    <input type="hidden" name="usuario" value="${user.usuario}" />
   <li><a href="#" onclick="$(this).closest('form').submit()">ver Expediente Gral</a> </li>
</form>
    
  	    
  	
  </ul>
</div>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>