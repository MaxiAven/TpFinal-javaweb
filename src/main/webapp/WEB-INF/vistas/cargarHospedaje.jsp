<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<!-- Bootstrap core CSS -->
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="css/starrr.css" rel="stylesheet" >
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <link href="css/style.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyA07VHJApYzXc3uJgFEk4l04KaSABLyaVA&sensor=false"></script>
	    
	    </head>
	    <body>

<c:if test="${nombre == null}" > 	
<c:redirect url="/login" /> 
</c:if>

<c:if test="${nombre != null}" > 	
<jsp:include page="menuPanel.jsp" />
</c:if>

 			 <div class="container">
	 	<div class="col-lg-2"></div>
	 	<div class="col-lg-8">
	<div class="panel panel-default">
		<div class="panel-heading"></div>
		<ul class="nav nav-tabs nav-justified">
  			<li><a href="/TpFinal-java/cargarTransporte">Traslado</a></li>
  			<li class="active"><a href="/TpFinal-java/cargarHospedaje">Hospedaje</a></li>
 			 <li><a href="/TpFinal-java/cargarViaje">Viaje</a></li>
		<div class="panel-body cargaRuta">
			<form:form action="cargar-hospedaje" method="POST"
				modelAttribute="hospedaje">
<div class="col-lg-6">
				<div class="form-group">
					<label for="tipoHospedaje">Tipo Hopedaje:</label> 
					<select class="form-control" name="tipoHospedaje" id="tipoHospedaje" required>
   				 		<option value="">Seleccione una opci�n</option>
   				 		<option value="hotel">Hotel</option>
   				 		<option value="hostel">Hostel</option>
   				 		<option value="casa">Casa</option>
   				 		<option value="departamento">Departamento</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
				</div>
				</div>

<div class="col-lg-6">
				<div class="form-group">
					<label for="nombre">Nombre del hospedaje:</label> <input
						type="text" class="form-control" name="nombre" id="nombre" required>
				</div>
				</div>

<div class="col-lg-6">
				<div class="form-group">
					<label for="ubicacion">Ubicaci�n del hospedaje:</label> <input
						type="text" class="form-control" name="ubicacion" id="ubicacion" required>
				</div>
				</div>

<div class="col-lg-3">
				<div class="form-group">
					<label for="precio">Precio por noche:</label> <input type="number"
						class="form-control" name="precio" id="precio" required>
				</div>
				</div>
<div class="col-lg-3">
				<div class="form-group">
					<label for="d�as">Cantidad de d�as:</label> <input type="number"
						class="form-control" name="dias" id="dias" required>
				</div>
				</div>

<div class="col-lg-12">
				<div class="form-group">
					<label for="descripcion">Descripci�n:</label>
					<textarea class="form-control" rows="3" name="descripcion"
						id="descripcion" required></textarea>
				</div>
				</div>

<div class="col-lg-12">
<div class="form-group">
					<label for="servicios" >Qu� servicios ofrece?</label>
					
					
					<label class="form-control">
				  		<input type="checkbox" name="servicios" value="wifi"> Wi-Fi
					</label>
					<label class="form-control">
					    <input type="checkbox" name="servicios" value="calefaccion"> Calefacci�n
					</label>
					<label class="form-control">
					    <input type="checkbox" name="servicios" value="estacionamiento"> Estacionamiento
					</label>
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="tv"> Tv
					</label>
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="aire"> Aire Acondicionado
					</label>
						
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="se permiten mascotas"> Pet Friendly
					</label>
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="blanqueria"> Blanquer�a
					</label>
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="parrilla"> Parrilla
					</label>
					
							<div class="form-group">
					<label class="form-control">Otros:
					<input type="text" name="servicios" id="servicios">
					</label>
				</div></div>
				<div class="form-group">

    			<label for="calificacion">Calificaci�n del Hospedaje:</label>
    			<div class="estrellas">
    				<input type="hidden" class="form-control" name="calificacion" id="calificacion" value="3">
    			</div>
  			</div> 


				<button type="submit" class="btn btn-default">Siguiente</button>
</div>
			</form:form>
			</div>
			</div>
		</div>
	</div>


</div>
</ul>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script src="js/starrr.js"></script>
		<script src="js/calificacion.js"></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>