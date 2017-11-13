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
	<%@ include file="header.jsp"%>

	<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<div class="panel panel-default">
				<div class="panel-heading">Registra tus datos</div>
				<div class="panel-body cargaRuta">

					<form:form action="registrar-usuario" method="POST"
						modelAttribute="usuario" onSubmit="return compararContraseña()">
						<div class="col-lg-4">
							<div class="form-group">
								<label for="nombre">Nombre:</label> <input type="text"
									class="form-control" name="nombre" id="nombre" /></input>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group">
								<label for="apellido">Apellido:</label> <input type="text"
									class="form-control" name="apellido" id="apellido"></input>
							</div>
						</div>


						<div class="col-lg-4">
							<div class="form-group">
								<label for="email">email:</label> <input type="email"
									class="form-control" name="email" id="email"></input>


							</div>
						</div>

						<div class="col-lg-6">
							<div class="form-group">
								<label for="password">contraseña:</label> <input type="password"
									class="form-control" name="password" id="password"></input>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="rpassword">contraseña:</label> <input
									type="password" class="form-control" name="rpassword"
									id="rpassword"></input>
							</div>
						</div>


						<button type="submit" class="btn btn-default">Registrarme</button>

					</form:form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-2"></div>

	<script>
		function comprarContraseña() {
			var p1 = document.getElementById("password").value;
			var p2 = document.getElementById("rpassword").value;
			if (p1 != p2) {
				alert("Las contraseñas deben coincidir");
				return false;
			}

		}
	</script>