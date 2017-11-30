<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${nombre == null}" > 	
<c:redirect url="/login" /> 
</c:if>
<!DOCTYPE html>
<html>
	<head>
	<!-- Bootstrap core CSS -->
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="../../css/starrr.css" rel="stylesheet" >
	    <link href="../../css/bootstrap.min.css" rel="stylesheet" >
	    <link href="../../css/style.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="../../css/bootstrap-theme.min.css" rel="stylesheet">
	    <link rel="shortcut icon"  href="../../img/logo.png"type="image/x-icon" />
	    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyA07VHJApYzXc3uJgFEk4l04KaSABLyaVA&sensor=false"></script>
	   
	    <title>Manejate.com</title>
	</head>
	<body>
	<jsp:include page="menuPanel.jsp" />
	<div id="listar" >
	<div class="texto">
		<c:forEach var="lista" items="${lista}">
			<p> ${lista.getUsuario().getNombre()} realizo un viaje que llamo ${lista.getNombre()},</p>
			<p> nos cuenta que viajo desde ${lista.getTransporte().getSalida()} hasta  ${lista.getTransporte().getLlegada()}</p>
			<p>y nos deja los siguentes datos sobre el hospedaje:</p>
			<ul>
				<li>Se hospedo en ${lista.getHospedaje().getTipoHospedaje()} "${lista.getHospedaje().getNombre()}"</li>
				<li>${lista.getHospedaje().getUbicacion()} </li>
				<li>y nos dice <span class=destacar>"${lista.getHospedaje().getDescripcion()}"</span></li>
				<li>el costo del hospedaje fue: ${lista.getHospedaje().getPrecio()} $</li>
				<li> ${lista.getHospedaje().getNombre()} cuenta con:  ${lista.getHospedaje().getServicios()}</li>
				<li>por todo esto le da una calificacion al hospedaje de ${lista.getHospedaje().getCalificacion()}/5</li>
			</ul>
			<p>El transporte lo hizo en ${lista.getTransporte().getTipo()}  </p>
			<ul>
				<li>Su costo fue ${lista.getTransporte().getPrecio()}</li>
				<li>y nos cuenta  <span class=destacar>  ${lista.getTransporte().getDescripcion()}</span></li>
					
			</ul>
			<p>El recorrido que hizo fue el siguiente</p>
			<input type="hidden" value="${lista.getTransporte().getSalida()}" id="salida" />
			<input type="hidden" value="${lista.getTransporte().getLlegada()}" id="llegada" />
			 <script src="js/google2.js" type="text/javascript"></script>
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
				
				  calcRoute();
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
				<div id="map-canvas" class=mapa></div>
		</c:forEach>
   </div>
    </div>
	</body>
	</html>