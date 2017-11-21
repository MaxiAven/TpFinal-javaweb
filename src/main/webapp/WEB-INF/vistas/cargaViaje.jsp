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
	<%@ include file="menuPanel.jsp"%>

	<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<ul class="nav nav-tabs nav-justified">
  			<li><a href="/TpFinal-java/cargarTransporte">Traslado</a></li>
  			<li><a href="/TpFinal-java/cargarHospedaje">Hospedaje</a></li>
 			 <li class="active"><a href="/TpFinal-java/cargaViaje">Viaje</a></li>
				<div class="panel-body cargaRuta">
					<form:form action="cargar-viaje" method="POST" modelAttribute="viaje">
						<div class="col-lg-12">
							<div class="form-group">
							<label for="nombreViaje">Carga el nombre de tu viaje</label>
								 <input type="text"
									class="form-control" name="nombre" id="nombre"
									required>
							</div>
							<div class="panel panel-default">
							<div class="panel-heading">Compartí fotos de tu viaje</div>
							<div class="panel-body">
							<div class="form-group">
								<input
									type="file" id="img1" name="img1">
								<p class="help-block">Subí tu imagen</p>
							</div>
							
							
							<div class="form-group">
							<input
									type="file" id="img2" name="img2">
								<p class="help-block">Subí tu imagen</p>
							</div>
							
							
							<div class="form-group">
							<input
									type="file" id="img3" name="img3">
								<p class="help-block">Subí tu imagen</p>
							</div>
							</div>
							</div>
							<input type="submit" name="cargar" value="Cargar Viaje" class="btn btn-default">
							 </div>
						</div>
					</form:form>
				</div>
				</ul>
			</div>
		</div>
	</div>