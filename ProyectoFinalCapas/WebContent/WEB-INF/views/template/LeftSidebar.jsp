<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<div class="main">
	<aside>
		<div class="sidebar left ">


			<ul class="list-sidebar bg-defoult">

				<c:forEach items="${menu}" var="dto">

					<c:if test="${dto == 'C'}">
						<li><a href="#" data-toggle="collapse"
							data-target="#dashboard" class="collapsed active"> <i
								class="fa fa-th-large"></i> <span class="nav-label">Catalogos
							</span> <span class="fa fa-chevron-left pull-right"></span>
						</a>
							<ul class="sub-menu collapse" id="dashboard">
								<li><a
									href="${pageContext.request.contextPath}/listadoCliente">Cliente</a></li>
								<li><a
									href="${pageContext.request.contextPath}/listadoProducto">Producto</a></li>
								<li><a
									href="${pageContext.request.contextPath}/listadoCategoria">Categoria</a></li>
								<li><a
									href="${pageContext.request.contextPath}/listadoLugar">Lugar</a></li>
								<!-- 								<li><a href="#">Proveedor</a></li> -->
							</ul></li>
					</c:if>

					<c:if test="${dto == 'I'}">
						<li><a href="#" data-toggle="collapse"
							data-target="#products" class="collapsed active"> <i
								class="fa fa-bar-chart-o"></i> <span class="nav-label">Inventario</span>
								<span class="fa fa-chevron-left pull-right"></span>
						</a>
							<ul class="sub-menu collapse" id="products">
								<li><a
									href="${pageContext.request.contextPath}/crearEntrada">Crear
										Entrada</a></li>
								<li><a
									href="${pageContext.request.contextPath}/crearSalida">Crear
										Salida</a></li>
								<li><a
									href="${pageContext.request.contextPath}/listadoMovProducto">Consulta
										Entradas</a></li>
								<li><a
									href="${pageContext.request.contextPath}/listadoMovProductoSalida">Consulta
										Salidas</a></li>
								<li><a
									href="${pageContext.request.contextPath}/listadoStock">Stock</a></li>

							</ul></li>



					</c:if>


					<%-- 					<c:if test="${dto == 'F'}"> --%>
					<!-- 						<li><a href="#" data-toggle="collapse" data-target="#facturas" -->
					<!-- 							class="collapsed active"><i class="fa fa-table"></i> <span -->
					<!-- 								class="nav-label">Facturación  </span><span -->
					<!-- 								class="fa fa-chevron-left pull-right"></span></a> -->
					<!-- 							<ul class="sub-menu collapse" id="facturas"> -->
					<%-- 								<li><a href="${pageContext.request.contextPath}/inicioFactura">Generación Factura</a></li> --%>
					<!-- 								<li><a href="">Consulta Factura</a></li> -->
					<!-- 							</ul></li> -->
					<%-- 					</c:if> --%>

					<c:if test="${dto == 'S'}">
						<li><a href="#" data-toggle="collapse"
							data-target="#seguridadMenu" class="collapsed active"><i
								class="fa fa-table"></i> <span class="nav-label">Seguridad
							</span><span class="fa fa-chevron-left pull-right"></span></a>
							<ul class="sub-menu collapse" id="seguridadMenu">
								<li><a
									href="${pageContext.request.contextPath}/listadoUsuario">Usuarios</a></li>
								<li><a href="${pageContext.request.contextPath}/listadoRol">Roles</a></li>
							</ul></li>
					</c:if>

				</c:forEach>


			</ul>
		</div>
	</aside>
</div>