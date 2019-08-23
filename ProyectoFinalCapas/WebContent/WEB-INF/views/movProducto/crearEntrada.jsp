<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creaci&oacute;n de Entrada</title>
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
					action="${pageContext.request.contextPath}/actualizarEntrada">
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
						<div class="card-header">Ingreso de entrada de producto</div>
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
											<div class="col-sm-10">
												<c:if test="${idProducto != null }">
													<input type="hidden" class="col-sm-8 col-form-control"
														name="id_producto" value="${idProducto}">
													<input type="text" class="col-sm-8 col-form-control"
														value="${nombreProducto}">
												</c:if>
												<c:if test="${idProducto == null }">
													<input type="text" class="col-sm-8 col-form-control"
														value="valor defecto">
												</c:if>
												<button type="button" style="float: right;"
													class="col-sm-3 btn-info btn-sm"
													onclick="location.href='${pageContext.request.contextPath}/listadoMovProducto'">
													Listado Producto</button>
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
											<label class="col-sm-3 control-label">Comentario*</label>
											<div class="col-sm-7 ">
												<input type="text" class="form-control" name="comentario"
													value="${movproducto.comentario }"
													placeholder="Agregue comentario">
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">Tipo Entrada</label>
											<div class="col-sm-7">
												<select class="form-control" name="tipo_entrada">
													<option value="N">Nuevo Producto</option>
													<option value="D">Devolucion</option>
													<option value="A">Averia</option>
													<option value="C">Cambio</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">Lugar</label>
											<div class="col-sm-7">
												<select class="form-control" name="id_lugar">
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

										<div class="form-group" style="display: none;">
											<label class="col-sm-2 control-label">Estado</label>
											<div class="col-sm-7">
												<select class="form-control" name="estado">
													<option value="A"
														<c:if test="${cliente.estado =='A' }">selected</c:if>>Activo</option>

												</select>
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
				</form>


			</div>
		</div>
	</div>


	<!-- <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->


</body>
</html>