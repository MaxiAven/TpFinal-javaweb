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
<script>



var rendererOptions = {
draggable: true
};
var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);;
var directionsService = new google.maps.DirectionsService();
var map;

var puebla = new google.maps.LatLng(-34.5311453,-59.0180418,8);

function initialize() {

  var mapOptions = {
zoom: 7,
      center: puebla
  };
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.setMap(map);
 // directionsDisplay.setPanel(document.getElementById('directionsPanel'));

  google.maps.event.addListener(directionsDisplay, 'directions_changed', function() {
      computeTotalDistance(directionsDisplay.getDirections());
      });

 // calcRoute();
}

function calcRoute() {

  var request = {
		origin: document.getElementById('salida').value,//
        destination:document.getElementById('llegada').value,//
       // waypoints:[{location: 'Tlaxcala, tlax'}, {location: 'Cordoba,VER'}],
        travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
      }
      });
}

function computeTotalDistance(result) {
  var total = 0;
  var myroute = result.routes[0];
  for (var i = 0; i < myroute.legs.length; i++) {
    total += myroute.legs[i].distance.value;
  }
  total = total / 1000.0;
  document.getElementById('total').innerHTML = total + ' km';
}

google.maps.event.addDomListener(window, 'load', initialize);

</script>
	</head>
	<body>
<!-- menu que el usuario al logearse -->


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
  			<li class="active"><a href="/TpFinal-java/cargarTransporte">Traslado</a></li>
  			<li><a href="/TpFinal-java/cargarHospedaje">Hospedaje</a></li>
 			 <li><a href="/TpFinal-java/cargarViaje">Viaje</a></li>
	 	<div class="panel-body cargaRuta">
			<form:form action="cargar-transporte" method="POST" modelAttribute="transporte">
			<div class="col-lg-4">
  			<div class="form-group">
    			<label for="salida">Salida:</label>
    			<input type="text" class="form-control" name="salida" id="salida" required>
  			</div>
  			</div>
  			<div class="col-lg-4">
  			<div class="form-group">
   				 <label for="llegada">Llegada</label>
    			 <input type="text" class="form-control" name="llegada" id="llegada" onblur="calcRoute();" required>
  			</div>
  			</div>
  			
  			<div class="col-lg-4">
  			<div class="form-group">
   				 <label for="llegada">Elegi tu destino:</label>
   				 	<select class="form-control" name="lugar" id="lugar" required>
   				 		<option value="">Seleccione una opción</option>
   				 		<option value="playa">Playa</option>
   				 		<option value="montana">Montaña</option>
   				 		<option value="ciudad">Ciudad</option>
   				 		<option value="bosque">Bosque</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
  			</div>
  		</div>
   			
   			<div class="col-lg-6">
   			<div class="form-group">
    			<label for="precio">Precio:</label>
    			<input type="number" class="form-control" name="precio" id="precio" required>
  			</div>
  			</div>
  			<div class="col-lg-6">
  			<div class="form-group">

    			<label for="calificacion">Calificación del Viaje:</label>
    			<div class="estrellas">
    				<input type="hidden" class="form-control" name="calificacion" id="calificacion" value="0">
    			</div>
  			</div> 
  			</div>
  			<div class="col-lg-2">
  			<label for="tipo">Tipo de transporte</label>
   				 	<select class="form-control" name="tipo" id="tipo">
   				 		
   				 		<option value="auto">Auto</option>
   				 		<option value="bus">Bus</option>
   				 		<option value="avion">Avion</option>
   				 		<option value="tren">Tren</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
  			</div>
  			<div class="col-lg-12">
  			<div class="form-group">

    			<label for="descripcion">Comentario:</label>
    			<textarea class="form-control" name="descripcion" id="descripcion" required></textarea>
  			</div>
  			<div id="map-canvas" style=" width:100%; height:400px"></div>
  			
  			
    
    
    <button class="btn btn-primary" type="submit"  id="abrirHospedaje">Cargar mi Viaje</button>
      
    </form:form>
  
    		
   </div>
   	
		</div>
		</div>
		<!-- fin div del form -->
		</ul>
		</div>
		<div class="col-lg-2"></div>
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
		
