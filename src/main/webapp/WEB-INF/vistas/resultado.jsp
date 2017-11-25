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
		<c:forEach items ="${listado}" var= "listado">
		<tr>
			<td>${listado.getSalida()} - ${lista.getLlegada()}</td>
			<td>${listado.getDescripcion()}</td>
			<td>${listado.getPrecio()}</td>
			<td>${listado.getLugar()}</td>
			
			
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