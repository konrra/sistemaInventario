<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
     
});
</script>

<style>
.btn-primary { 
 	background-color: #9FCF16; 
	
 } 
 body { 
 	background-color: #808080 
 } 
</style>

<title>Sistema de Inventario</title>
<button type="button" class="btn btn-primary btn-block">Fundacion Manos Amigas</button>

<header class="header">
	<nav class="navbar navbar-toggleable-md navbar-light pt-0 pb-0 ">

		<div class="float-left">
			<a href="#" class="button-left"><span class="fa fa-fw fa-bars "></span></a>
		</div>
		<div class="collapse navbar-collapse flex-row-reverse" id="navbarNavDropdown">
			<ul class="navbar-nav">

				<li class="nav-item dropdown  user-menu"><a
					class="nav-link dropdown-toggle" href="http://example.com"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <img src="http://via.placeholder.com/160x160" class="user-image"
						alt="User Image"> <span class="hidden-xs" >${user.usuario}</span>
						
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Cerrar Sesion</a> <a
							class="dropdown-item" href="#">Cambiar Contrasenia</a>
					</div></li>
			</ul>

			
		</div>
	</nav>
	
	
	
</header>

