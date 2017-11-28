<%@ include file="header.jsp" %>
	<div class="container">
	<div class="col-md-1"></div>
	<div class="col-md-10">
	<div class="panel panel-default">
	<div class="panel-heading"><h3>Elegí a donde ir</h3></div>
	<div class="panel-body cargaRuta">
	<table class="table table-condensed">
		<tr>
			<th>Nombre del viaje</th>
			<th>Lugar de Partida/Llegada</th>
			<th>Tipo de Destino</th>
			<th>Precio</th>
			<th>Descripcion</th>
		</tr>
		<c:forEach items ="${lista}" var= "lista">
		<tr>
			<td>${lista.getNombre()}</td>
			<td>${lista.getTransporte().getSalida()} - ${lista.getTransporte().getLlegada()}</td>
		 	<td>${lista.getTransporte().getLugar()}</td> 
		    	<td>${lista.getPrecio()}</td>
 			<td><a href="listaExperienciaDeViaje/id/${lista.getIdViaje()}">Ver descripcion</a></td>
			
			
		</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	</div>
	<div class="col-md-1"></div>
	</div>
</body>
</html>