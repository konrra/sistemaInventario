
<!-- <link rel="stylesheet" -->
<!-- 	href="resources/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="resources/js/bootstrap.min.js"></script> -->

<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script> -->
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->


<header class="header">
	<nav class="navbar navbar-toggleable-md navbar-light pt-0 pb-0 ">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarNavDropdown"
			aria-controls="navbarNavDropdown" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="float-left">
			<a href="#" class="button-left"><span class="fa fa-fw fa-bars "></span></a>
		</div>
		<div class="collapse navbar-collapse flex-row-reverse"
			id="navbarNavDropdown">
			<ul class="navbar-nav">

				<li class="nav-item dropdown  user-menu"><a
					class="nav-link dropdown-toggle" href="http://example.com"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <img
						src="http://via.placeholder.com/160x160" class="user-image"
						alt="User Image"> <span class="hidden-xs">Usuario</span>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Cerrar Sesion</a> <a
							class="dropdown-item" href="#">Cambiar Contrasenia</a>
					</div></li>
			</ul>
		</div>
	</nav>
</header>
<div class="main">
	<aside>
		<div class="sidebar left ">

			<ul class="list-sidebar bg-defoult">
				<li><a href="#" data-toggle="collapse" data-target="#dashboard"
					class="collapsed active"> <i class="fa fa-th-large"></i> <span
						class="nav-label"> Catalogos </span> <span
						class="fa fa-chevron-left pull-right"></span>
				</a>
					<ul class="sub-menu collapse" id="dashboard">
						<li><a href="${pageContext.request.contextPath}/listadoCliente">Cliente</a></li>
						<li><a href="${pageContext.request.contextPath}/listadoProducto">Producto</a></li>
						<li><a href="#">Categoria</a></li>
						<li><a href="#">Bodega</a></li>
						<li><a href="#">Proveedor</a></li>
					</ul></li>

				<li><a href="#" data-toggle="collapse" data-target="#products"
					class="collapsed active"> <i class="fa fa-bar-chart-o"></i> <span
						class="nav-label">Inventario</span> <span
						class="fa fa-chevron-left pull-right"></span>
				</a>
					<ul class="sub-menu collapse" id="products">
						<li><a href="#">Entradas</a></li>
						<li><a href="#">Salidas</a></li>
					</ul></li>
				
				<li><a href="#" data-toggle="collapse" data-target="#tables"
					class="collapsed active"><i class="fa fa-table"></i> <span
						class="nav-label">Facturacion</span><span
						class="fa fa-chevron-left pull-right"></span></a>
					<ul class="sub-menu collapse" id="tables">
						<li><a href=""> Static Tables</a></li>
						<li><a href=""> Data Tables</a></li>
						<li><a href=""> Foo Tables</a></li>
						<li><a href=""> jqGrid</a></li>
					</ul></li>
				<li><a href="#" data-toggle="collapse"
					data-target="#e-commerce" class="collapsed active"><i
						class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span
						class="fa fa-chevron-left pull-right"></span></a>
					<ul class="sub-menu collapse" id="e-commerce">
						<li><a href=""> Products grid</a></li>
						<li><a href=""> Products list</a></li>
						<li><a href="">Product edit</a></li>
						<li><a href=""> Product detail</a></li>
						<li><a href="">Cart</a></li>
						<li><a href=""> Orders</a></li>
						<li><a href=""> Credit Card form</a></li>
					</ul></li>

			</ul>
		</div>
	</aside>
</div>