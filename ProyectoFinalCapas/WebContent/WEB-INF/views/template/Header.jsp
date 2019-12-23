<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<script src="resources/jquery-ui/jquery.dataTables.min.js"></script>
<script src="resources/jquery-ui/dataTables.bootstrap4.min.js"></script>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="resources/mask-plugin/dist/jquery.mask.js"></script>
<script src="resources/mask-plugin/dist/jquery.mask.min.js"></script>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt"     uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet"
	href="resources/css/LeftSidebarStyle.css">

<script type="text/javascript" >
$(document).ready(function(){
   $('.button-left').click(function(){
       $('.sidebar').toggleClass('fliph');
   });
   
   
   $('#tableCli').DataTable();
   $('#tablePro').DataTable();
   $('#tableCat').DataTable();
   $('#tableStock').DataTable();
});




</script>

<style>
table{
  table-layout: fixed;
}

#tabletr th{
  width: 130px;
  overflow: auto;
}

.btn-primary { 
 	background-color: #9FCF16; 
	
 } 
 body { 
 	background-color: white;
 } 
  
.div-row {
	height:100vh;
	background-color: white;
}

.div-row-left {
	background-color: black;
	height:100vh;
}

.div-row-right {
	width: 80%;
	height: 50%;
}


.div-row-right-container {
	margin-left: 2%; 
	margin-top: 2%;
}

.tbody {
			  min-height:10px;
			  overflow-y:auto;
}
 
</style>

<title>Sistema de Inventario</title>
<button type="button" class="btn btn-primary btn-block"><h2>Asociaci&oacute;n Manos Amigas</h2></button>

<header class="header">
	<nav class="navbar navbar-toggleable-md navbar-light pt-0 pb-0 ">

		
		<div class="collapse navbar-collapse flex-row-reverse"
			id="navbarNavDropdown">

			<ul class="navbar-nav">

				<li class="nav-item dropdown  user-menu"><a
					class="nav-link dropdown-toggle" href="http://example.com"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <img src="http://via.placeholder.com/160x160" class="user-image"
						alt="User Image"> <span class="hidden-xs" >${user.usuario}</span>
						
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

						<a class="dropdown-item" href="http://sandra:8080/SistemaInventario/">Cerrar Sesi&oacute;n</a> <a
							class="dropdown-item" href="editarUsuario?id_usuario=${user.id_usuario}">Cambiar Contrase&ntilde;a</a>

					</div></li>
			</ul>
			
			
		</div>
	</nav>
	
	
	
</header>

