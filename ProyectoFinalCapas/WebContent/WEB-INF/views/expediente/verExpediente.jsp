<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/saveEmpleado">
</br>
<div class="container">
    	<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-body" align="center">
					<h2>Expediente General</h2>
					</div>
</h3>
					<table class="table table-hover" id="dev-table">
					<tbody>
        			<tr>
        				<td  align="center">Nombre</td>
        				<td data-title="Code"  align="center"><c:out value="${empleado.s_nomempleado}"></c:out></td>
        				
        			</tr>
        			<tr>
        				<td data-title="Code"  align="center">Apellido</td>
        				<td align="center">${empleado.ap_empleado}</td>
        			</tr>
        			
        			<tr>
        				<td data-title="Code"  align="center">Numero Contacto</td>
        				<td align="center">${empleado.num_contacto }</td>
        			</tr>
        			
        			<tr>
        				<td data-title="Code"  align="center">Pais Origen</td>
        				<td  align="center">${empleado.pais_origen }</td>
        			</tr>
        			
        			<tr>
        				<td data-title="Code"  align="center">Ciudad Origen</td>
        				<td  align="center">${empleado.ciu_origen }</td>
        			</tr>
                        <tr>
        				<td data-title="Code"  align="center">Salario</td>
        				<td  align="center">${empleado.salario }</td>
        			</tr>
                        <tr>
        				<td  align="center" data-title="Code">fecha nacimiento</td>
        				<td  align="center">${empleado.f_nac }</td>
        			</tr>
                        <tr>
        				<td  align="center" data-title="Code">Numero telefono celular</td>
        				<td  align="center">${empleado.num_tel_cel }</td>
        			</tr>
                        <tr>
        				<td data-title="Code"  align="center">NIT</td>
        				<td  align="center">${empleado.nit }</td>
        			</tr>
                        <tr>
        				<td data-title="Code"  align="center">DUI</td>
        				<td  align="center">${empleado.dui }</td>
        			</tr>
                        <tr>
        				<td data-title="Code"  align="center">ISSS</td>
        				<td  align="center">${empleado.num_seguro }</td>
        			</tr>
                        <tr>
        				<td data-title="Code"  align="center">AFP</td>
        				<td  align="center">${empleado.afp }</td>
        			</tr>
        			<tr>
        				<td data-title="Code"  align="center">Telefono Emergencia</td>
        				<td  align="center">${empleado.telER }</td>
        			</tr>
        		
        		</tbody>

					</table>
				</div>
			</div>
			
		</div>
	</div>
</form>


</body>
</html>