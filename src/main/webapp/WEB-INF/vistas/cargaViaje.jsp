<%@ include file="header.jsp" %>
	 	<div class="container">
	 	<div class="col-lg-4"></div>
	 	<div class="col-lg-4">
	 	<div class="panel panel-default">
	 	<div class="panel-heading">Carga tu Viaje</div>
	 	<div class="panel-body cargaRuta">
			
			<form:form action="cargar-viaje" method="POST" modelAttribute="viaje">
  			<div class="form-group">
    			<label for="salida">Salida:</label>
    			<input type="text" class="form-control" name="salida" id="salida">
  			</div>
  			<div class="form-group">
   				 <label for="llegada">Llegada</label>
    			 <input type="text" class="form-control" name="llegada" id="llegada">
  			</div>
  			<div class="form-group">

   				 <label for="llegada">Tipo De Destino:</label>
   				 	<select class="form-control" name="tipoDestino" id="tipoDestino">
   				 		<option value="">Seleccione un Destino</option>
   				 		<option value="playa">Playa</option>
   				 		<option value="montaña">Montaña</option>
   				 		<option value="ciudad">Ciudad</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
   				
   			</div>
  			<div class="form-group">
   				 <label for="llegada">Tipo Hospedaje:</label>
   				 	<select class="form-control" name="tipoHospedaje" id="tipoHospedaje">
   				 		<option value="">Seleccione una opción</option>
   				 		<option value="hotel">Hotel</option>
   				 		<option value="hostel">Hostel</option>
   				 		<option value="casa">Casa</option>
   				 		<option value="departamento">Departamento</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
   				 <!-- <select class="form-control" name="tipoHospedaje" id="tipoHospedaje">

   				 <label for="llegada">Tipo Hospedaje:</label>
   				 <select class="form-control" name="tipoHospeaje" id="tipoHospeaje">

   				 	<option value="">Seleccione una opción</option>
   				 	<c:forEach items="${listaHospedaje}" var="lista">
   				 		<option value="${lista.getTipoHospedaje()}">${lista.getTipoHospedaje()}</option>
   				 	</c:forEach>
   				 	

   				 </select> -->

   				 </select>

   			</div>
   		
   			<div class="form-group">
   				 <label for="llegada">Cantidad de días:</label>

   				 <input type="text" class="form-control" name="cantidadDias" id="cantidadDias">
   				 <!--<select class="form-control" name="cantidadDias" id="cantidadDias">

   				 <select class="form-control" name="cantidadDias" id="cantidadDias">

   				 	<option value="">Seleccione una opción</option>
   				 		<option value="4">4</option>
   				 		<option value="7">7</option>
   				 		<option value="15">15</option>
   				 		<option value="30">30</option>

   				 </select>-->
   			</div>
   			<div class="form-group">
   				 <label for="llegada">Cantidad de personas:</label>
   				 <input type="text" class="form-control" name="cantidadPersonas" id="cantidadPersonas">
   				 <!-- <select class="form-control" name="cantidadPersonas" id="cantidadPersonas">

   				 </select>
   			</div>
   			<div class="form-group">
   				 <label for="llegada">Cantidad de personas:</label>
   				 <select class="form-control" name="cantidadPersonas" id="cantidadPersonas">

   				 	<option value="">Seleccione una opción</option>
   				 		<option value="2">2</option>
   				 		<option value="3">3</option>
   				 		<option value="5">5</option>

   				 </select>-->

   				 </select>

   			</div>
   			<div class="form-group">
    			<label for="precio">Precio:</label>
    			<input type="text" class="form-control" name="precio" id="precio">
  			</div>
  			<div class="form-group">

    			<label for="calificacion">Calificación del Viaje:</label>
    			<div class="estrellas">
    				<input type="hidden" class="form-control" name="calificacion" id="calificacion" value="0">
    			</div>
  			</div> 
  			<div class="form-group">

    			<label for="descripcion">Comentario:</label>
    			<textarea class="form-control" name="descripcion" id="descripcion"></textarea>
  			</div>
    			 
  			
  				<button type="submit" class="btn btn-default">Cargar Viaje</button>
  			</form:form>
		</div>
		</div>
		</div>
		<div class="col-lg-4"></div>
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

