<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="css/starrr.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
	<!-- menu que el usuario al logearse -->

<c:if test="${nombre != null}" > 	
<jsp:include page="menuPanel.jsp" />
<c:if test="${nombre == null}" > 	
<c:redirect url="/login" /> 
</c:if>
</c:if>

	<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<ul class="nav nav-tabs nav-justified">
					<li><a href="/TpFinal-java/cargarTransporte">Traslado</a></li>
					<li><a href="/TpFinal-java/cargarHospedaje">Hospedaje</a></li>
					<li class="active"><a href="/TpFinal-java/cargarViaje">Viaje</a></li>
					<div class="panel-body cargaRuta">
						<form:form action="cargar-viaje" method="POST"
							modelAttribute="viaje">
							<div class="col-lg-12">
								<div class="form-group">
									<label for="nombreViaje">Carga el nombre de tu viaje</label> <input
										type="text" class="form-control" name="nombre" id="nombre"
										required>
								</div>
									
								<div class="form-group">
									<label for="nombreViaje">Cual fue el costo total del viaje (hospedaje+transporte)</label> <input
										type="number" class="form-control" name="precio" id="precio" value="${precioTotal.getPrecio() * precioTotal.getDias() + precioTotalTrans.getPrecio()}"
										required>
								</div>
								<input type="hidden" name="idUsuario" id="idUsuario" value="${id}">
								<div class="form-group">

									<label for="calificacion">Calificación del Viaje:</label>
									<div class="estrellas">
										<input type="hidden" class="form-control" name="calificacion"
											id="calificacion" value="0">
									</div>
								</div>
								<div class="panel panel-default">
									
										<a href="#" id="btnSug">Sugerir lugares para visitar</a>
										<a href="#" id="btnSugOcultar">Ocultar sugerencias</a>
										<div id="sugerencias">
											<label>Sugerencia 1:</label>
											<div class="form-group">
											<input type="text" id="sug1" name="sug1" class="form-control">
											</div>
											<label>Sugerencia 2:</label>
											<div class="form-group">
											<input type="text" id="sug2" name="sug2" class="form-control">
											</div>
											<label>Sugerencia 3:</label>
											<div class="form-group">
											<input type="text" id="sug3" name="sug3" class="form-control">
											</div>
										</div>
										
										</div>
									</div>
								</div>
								<input type="submit" name="cargar" value="Cargar Viaje"
									class="btn btn-default">
							</div>
					</div>
					</form:form>
			</div>
			</ul>
		</div>
	</div>
	</div>
	<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script src="js/starrr.js"></script>
		<script src="js/calificacion.js"></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script src="js/funciones.js" type="text/javascript"></script>
	</body>
	</html>