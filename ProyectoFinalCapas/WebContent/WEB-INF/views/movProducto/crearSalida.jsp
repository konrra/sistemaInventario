<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creaci&oacute;n de Salida</title>
<%@ include file="../template/Header.jsp"%>
</head>

<body class="body">
	<div class="row" style="height: 100vh; background-color: white;">
		<div class="col-xs-*" style="background-color: black;">
			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*" style="width: 75%">
			<div class="container" style="margin-left: 2%; margin-top: 2%">


				<form class="form-horizontal" role="form"
					action="${pageContext.request.contextPath}/actualizarSalida">
					<c:if test="${not empty error}">

						<div class="alert alert-danger alert-dismissible fade show"
							style="margin-right: 60%;" role="alert">
							<strong>Error:</strong>
							<c:out value="${error}" />
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

					</c:if>
					<br>
					<div class="card">
						<div class="card-header">Ingreso de salida de producto</div>
						<div class="card-body form-horizontal">
							<div>
								<span style="font-size: small;">-Los campos marcados con
									* son obligatorios</span>
							</div>
							<br>

							<div class="form-group">
								<div class="row">

									<div class="col-sm-3 ">
										<div class="col-sm-4"></div>
									</div>
								</div>


								<div class="form-row">
									<div style="width: 50%; float: left;">

										<div class="form-group">
											<label class="col-sm-3 control-label">Producto </label>
											<div class="col-sm-9 form-inline">
												<c:if test="${idProducto != null }">
													<input type="hidden" class="form-control"
														name="id_producto" value="${idProducto}">
													<input type="text" name="nomProducto" id="nomProducto" class="form-control"
														value="${nombreProducto}">
												</c:if>
												<c:if test="${idProducto == null }">
													<input type="text" class="form-control"	value="valor defecto">
												</c:if>
												<button type="button" class="btn-info btn-sm" data-toggle="modal" data-target="#modalProducto">
													...</button>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">Cantidad </label>
											<div class="col-sm-7">
												<input type="text" class="form-control" name="cantidad"
													value="${movproducto.cantidad }">
											</div>
										</div>



										<div class="form-group">
											<label class="col-sm-3 control-label">Cliente </label>
											<div class="col-sm-9 form-inline">
												<c:if test="${idCliente != null }">
													<input type="hidden" class="form-control" name="id_cliente" id="id_cliente" value="${idCliente}">
													<input type="text" class="form-control" name="nomCliente" id="nomCliente" value="${nombreCliente}">
												</c:if>
												<c:if test="${idCliente == null }">
													<input type="text" class="form-control"	value="">
												</c:if>
												<button type="button" class="btn-info btn-sm" data-toggle="modal" data-target="#modalCliente">
													...</button>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">Lugar</label>
											<div class="col-sm-7">
												<select class="form-control" name="id_lugar" > 
													<option value="">Seleccione una categor&iacute;a</option>
													<c:forEach items="${comboLugar}" var="c">
														<option value="${c.id_lugar }"
															<c:if test="${c.id_lugar == movproducto.lugar.id_lugar }">selected</c:if>><c:out
																value="${c.descripcion }"></c:out>
														</option>
													</c:forEach>
												</select>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label">Comentario</label>
											<div class="col-sm-7 ">
												<input type="text" class="form-control" name="comentario"
													value="${movproducto.comentario }"
													placeholder="Agregue comentario">
											</div>
										</div>

									</div>
								</div>
								<!-- div que finaliza el body del panel -->
							</div>
							<div class="card-footer">
								<button type="button" class="btn btn-danger"
									onclick="location.href='${pageContext.request.contextPath}/listadoCategoria'">Cancelar</button>
								<button type="submit" class="btn btn-success">Guardar</button>
							</div>
							<!-- div que finaliza el footer del panel -->
							
							
					<div class="modal fade" id="modalProducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="modalProductoTitulo">Listado Producto</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <table id="tablePro" class="table table-sm table-bordere table-hover table-bordered">
								<thead class="thead-light">
									<tr>
										<th>Descripci&oacute;n</th>
										<th>Categor&iacute;a</th>
										<th>Estado</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${total != 0 }">
										<c:forEach items="${colectionResultProd}" var="dto">
											<tr onclick="$('#id_producto').val('${dto.id_producto}'); $('#nomProducto').val('${dto.nombre}');" >
												<td><c:out value="${dto.nombre}" /></td>
												<td><c:out	value="${dto.categoriaxproducto.descripcion}" /></td>
												<td>
													<c:if test="${dto.estado == 'A'}">	<c:out value="Activo"></c:out></c:if> 
													<c:if test="${dto.estado == 'I'}"> <c:out value="Inactivo"></c:out></c:if>
												</td>
											</tr>
										</c:forEach>
									</c:if>
									<c:if test="${total == 0 }">
										<tr>
											<td align="center" style="font-style: italic;" colspan="7">
												No hay registros que mostrar
											</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						        
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Cancelar</button>
						        <button type="button" class="btn btn-primary btn-sm">Seleccionar</button>
						      </div>
						    </div>
						  </div>
						</div>	
						
						<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
				  Launch demo modal
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="modalCliente" tabindex="-1" role="dialog" aria-labelledby="modalClienteTitle" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="modalClienteTitle">Listado Cliente</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <table class="table table-sm table-bordere table-hover table-bordered">
							<thead class="thead-light">
								<tr>
									<th>Nombre</th>
									<th>Tipo</th>
									<th>N&uacute;m. cel.</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${total != 0 }">
									<c:forEach items="${colectionResultClien}" var="dto">
										<tr onclick="$('#id_cliente').val('${dto.id_cliente}'); $('#nomCliente').val('${dto.nombre}');" >
											<td><c:out value="${dto.nombre}" /></td>
											<td><c:if test="${dto.tipo == 'N'}">
													<c:out value="Natural"></c:out>
												</c:if> 
												<c:if test="${dto.tipo == 'J'}">
													<c:out value="Jur&iacute;dico"></c:out>
												</c:if>
											</td>
											<td><c:out value="${dto.num_tel_cel}" /></td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${total == 0 }">
									<tr>
										<td align="center" style="font-style: italic;" colspan="7">No
											hay registros que mostrar aqui</td>
									</tr>
								</c:if>
							</tbody>
						</table>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Cancelar</button>
				        <button type="button" class="btn btn-primary btn-sm">Seleccionar</button>
				      </div>
				    </div>
				  </div>
				</div>			
							
							
				</form>
			</div>
		</div>
	</div>


</body>
</html>