<%@ include file="header.jsp" %>
	<div class="container">
	<div class="col-md-1"></div>
	<div class="col-md-10">
	<div class="panel panel-default">
	<div class="panel-heading"><h3>Elegí a donde ir</h3></div>
	<div class="panel-body cargaRuta">
	<table class="table table-condensed">
		<tr>
			<th>Destino</th>
			<th>Cantidad de personas</th>
			<th>Cantidad de Días</th>
			<th>Descripción</th>
			<th>Precio</th>
		</tr>
		<c:forEach items ="${lista}" var= "lista">
		<tr>
			<td>${lista.getSalida()} - ${lista.getLlegada()}</td>
			<td>${lista.getCantidadPersonas()}</td>
			<td>${lista.getCantidadDias()}</td>
			<td>${lista.getDescripcion()}</td>
			<td>${lista.getPrecio()}</td>
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