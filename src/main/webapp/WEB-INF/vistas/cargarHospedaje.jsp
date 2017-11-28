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
					<select class="form-control" name="lugar" id="lugar">
   				 		<option value="">Seleccione una opción</option>
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
						type="text" class="form-control" name="nombre" id="nombre">
				</div>
				</div>

<div class="col-lg-6">
				<div class="form-group">
					<label for="ubicacion">Ubicación del hospedaje:</label> <input
						type="text" class="form-control" name="ubicacion" id="ubicacion">
				</div>
				</div>

<div class="col-lg-6">
				<div class="form-group">
					<label for="precio">Precio por noche:</label> <input type="text"
						class="form-control" name="precio" id="precio">
				</div>
				</div>

<div class="col-lg-12">
				<div class="form-group">
					<label for="descripcion">Descripción:</label>
					<textarea class="form-control" rows="3" name="descripcion"
						id="descripcion"></textarea>
				</div>
				</div>

<!-- 				<div class="form-group"> -->
<!-- 					<input name="img1" id="img1" type="file" class="file" -->
<!-- 						data-preview-file-type="any" required> -->
<!-- 				</div> -->

<!-- 				<div class="form-group"> -->
<!-- 					<input name="img2" id="img2" type="file" class="file" -->
<!-- 						data-preview-file-type="any" required> -->
<!-- 				</div> -->

<!-- 				<div class="form-group"> -->
<!-- 					<input name="img3" id="img3" type="file" class="file" -->
<!-- 						data-preview-file-type="any" required> -->
<!-- 				</div> -->
<div class="col-lg-12">
<div class="form-group">
					<label for="servicios" >Qué servicios ofrece?</label>
					
					
					<label class="form-control">
				  		<input type="checkbox" name="servicios" value="wifi"> Wi-Fi
					</label>
					<label class="form-control">
					    <input type="checkbox" name="servicios" value="calefaccion"> Calefacción
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
					    <input type="checkbox" name="servicios" value="mascotas"> Pet Friendly
					</label>
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="blanqueria"> Blanquería
					</label>
						<label class="form-control">
					    <input type="checkbox" name="servicios" value="parrilla"> Parrilla
					</label>
					
							<div class="form-group">
					<label class="form-control">Otros:
					<input type="text" name="servicios" id="servicios">
					</label>
				</div></div>



				<button type="submit" class="btn btn-default">Cargar
					Hospedaje</button>
</div>
			</form:form>
			</div>
			</div>
		</div>
	</div>


</div>
</ul>

</body>
</html>