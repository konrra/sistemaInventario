<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>


<div>
	<div class="row" style="height:100vh; background-color: white;">
		<div class="col-xs-*" style="background-color: black;" >

<script type="text/javascript">
	$(document).ready(function(){
		$('.num_tel_cel').mask('0000-0000');
		$('.nit').mask('0000-000000-000-0');
		$('.dui').mask('00000000-0');
	});
</script>

			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*" style="width: 75%">
			<div class="container" style="margin-left: 2%; margin-top: 2%">

				<body class="body-back">
				<form class="form-horizontal" role="form"
						action="${pageContext.request.contextPath}/actualizarCliente">
					<input type="hidden" name="id_cliente" id="id_cliente"
						value="${cliente.id_cliente}">
					<div class="card">
						<div class="card-header">Edición de información del cliente
					</div>
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
						<div class="card-body">

							<div style="width: 50%; float: left;">
									<div class="form-group">
										<label class="col-sm-3 control-label">Nombre*</label>
										<div class="col-sm-9 ">
											<input type="text" class="form-control" name="nombre"	value="${cliente.nombre}" size="30">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label">
											N&uacute;mero celular</label>
										<div class="col-sm-7">
											<input type="text" class="form-control num_tel_cel" name="num_tel_cel"	value="${cliente.num_tel_cel }" >
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label">
											Tel&eacute;fono fijo</label>
										<div class="col-sm-7">
											<input type="text"  class="form-control num_tel_cel"  name="num_tel_fijo"	value="${cliente.num_tel_fijo }"  >
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">Estado</label>
										<div class="col-sm-7">
											<select class="form-control" name="estado">
												<option value="A" <c:if test="${cliente.estado =='A' }">selected</c:if>>Activo</option>
												<option value="I" <c:if test="${cliente.estado =='I' }">selected</c:if>>Inactivo</option>
											</select>
										</div>
									</div>
								</div>
								
								
							<div style="width: 50%; float: right;">
									<div class="form-group">
										<label class="col-sm-2 control-label">NIT</label>
										<div class="col-sm-7">
											<input type="text" class="form-control nit" name="nit"	value="${cliente.nit }" maxlength="17">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">DUI</label>
										<div class="col-sm-7 ">
											<input type="text" class="form-control dui" name="dui"	value="${cliente.dui }" maxlength="10">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">Tipo Cliente</label>
										<div class="col-sm-7">
											<select class="form-control" name="tipo">
												<option value="N" <c:if test="${cliente.tipo =='N' }">selected</c:if>>Natural</option>
												<option value="J" <c:if test="${cliente.tipo =='J' }">selected</c:if>>Jur&iacute;dico</option>
											</select>
										</div>
									</div>

								</div>

							
						</div>
						<!-- div que finaliza el body del panel -->
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/listadoCliente'">Cancelar</button>
						<button type="submit" class="btn btn-success" >Guardar</button>
					</div>
					<!-- div que finaliza el footer del panel -->

					</form>
					<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
				</body>
			</div>

		</div>
	</div>
	</div>
</html>