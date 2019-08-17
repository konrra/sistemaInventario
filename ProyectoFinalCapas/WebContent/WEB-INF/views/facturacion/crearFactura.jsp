<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../template/Header.jsp"%>
</head>

<script>

$(document).ready(function(){

    $('input[type="checkbox"]').click(function(){

        if($(this).is(":checked")){
			$("#clienteCombo").show();
			$("#cliente").hide();

        }

        else if($(this).is(":not(:checked)")){
        	$("#cliente").show();
			$("#clienteCombo").hide();
        }

    });

});

// function renderCliente(){
// 	alert($('input:checkbox[name=exampleCheck1]:checked'));
// }

</script>

<div>
	<div class="row">
		<div class="col-xs-*">
			<%@ include file="../template/LeftSidebar.jsp"%>
		</div>

		<div class="col-lg-*" style="width: 75%">
			<div class="container" style="margin-left: 2%; margin-top: 2%">


				<body class="body-back">
					<script src="https://code.jquery.com/jquery-latest.min.js"></script>
					<script type="text/javascript"	src="resources/jquery-ui/jquery-ui.js"></script>
					
					<form class="form-horizontal" role="form"
						action="${pageContext.request.contextPath}/actualizarLugar">
						<c:if test="${not empty error}">
							<div class="alert alert-danger alert-dismissible fade show"	style="margin-right: 60%;" role="alert">
								<strong>Error:</strong>
								<c:out value="${error}" />
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</c:if>
						
						<div class="card">
							<div class="card-header">Ingreso detalle de facturación</div>
							<div class="card-body">
							
							
							 <div class="form-check">
							   <input  type="checkbox" class="form-check-input" id="exampleCheck1" >
							     <label class="form-check-label" for="exampleCheck1">Existe Cliente</label>
							  </div>
							
								<div class="form-group" >
									<label class="col-sm-3 control-label">N&uacute;mero Factura</label>
									<div class="col-sm-7">
										<input type="number" class="form-control" name="numero" min="1"	value="${factura.numero}">
									</div>
								</div>
								
							
								<div class="form-group"  id="cliente">
									<label class="col-sm-3 control-label">Cliente</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" name="cliente"	value="${factura.cliente}">
									</div>
								</div>
								
								<div class="form-group" style="display: none;" id="clienteCombo">
										<label class="col-sm-3 control-label">Cliente</label>
										<div class="col-sm-7">
											<select class="form-control" name="clienteCombo"> 
											<option value="">Seleccione un cliente</option>
												<c:forEach items="${comboCliente}" var="c">
													<option value="${c.id_cliente }" onselect="$('#')"><c:out	value="${c.nombre }"></c:out></option>
												</c:forEach>
											</select>
										</div>
									</div>

								<div class="form-group">
									<label class="col-sm-3 control-label">fecha</label>
									<div class="col-sm-7">
									
										<input type="text" class="form-control" name="fecha" value='<fmt:formatDate value="${factura.fecha}" pattern="dd-MM-yyyy"/>' />
										
									</div>
								</div>
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Direcci&oacute;n</label>
									<div class="col-sm-7">
									 <textarea class="form-control" id="direccion" rows="3" value="${factura.direccion}"></textarea>
									</div>
								</div>
								
								<div class="form-group" >
									<label class="col-sm-2 control-label">Venta Cuenta</label>
									<div class="col-sm-7">
										<select class="form-control" name="venta_cuenta">
											<option value="C" <c:if test="${factura.venta_cuenta =='C' }">selected</c:if>>Contado</option>
											<option value="T" <c:if test="${factura.venta_cuenta =='T' }">selected</c:if>>Cr&eacute;dito</option>
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label">Nit/Dui</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" name="nit_dui" value="${factura.nit_dui}">
									</div>
								</div>
								
								
								
							</div>
						</div>

						<div class="card-footer">
							<button type="button" class="btn btn-danger"
								onclick="location.href='${pageContext.request.contextPath}/inicioFactura'">Cancelar</button>
							<button type="submit" class="btn btn-success">Imprimir</button>
						</div>
						<!-- div que finaliza el footer del panel -->

					</form>
					<!-- <script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->


				</body>


			</div>
		</div>

	</div>
</div>
</body>
</html>