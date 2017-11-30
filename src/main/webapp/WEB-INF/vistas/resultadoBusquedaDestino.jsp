<%@ include file="header.jsp" %>
	<div class="container">
	<div class="col-md-1"></div>
	<div class="col-md-10">
	<div class="panel panel-default">
	<div class="panel-heading"><h3>Referencias por tipo de destino</h3></div>
	<div class="panel-body cargaRuta">
	<table class="table table-condensed">
		<tr>
			<th>Tipo de Destino</th>
			<th>Destino</th>
			<th>Sugerencia Nº 1</th>
			<th>Sugerencia Nº 2</th>
			<th>Sugerencia Nº 3</th>
			<th>Usuario</th>
			<th>Ver</th>
		</tr>
		<c:forEach items ="${lista}" var= "lista">
		<tr>
			<td>${lista.getTransporte().getLugar()}</td>
			<td>${lista.getTransporte().getLlegada()}</td>
			<td>${lista.getSug1()}</td>
		 	<td>${lista.getSug2()}</td> 
		    <td>${lista.getSug3()}</td>
			<td>${lista.getUsuario().getEmail()}</td>
			 <td><a href="listaExperienciaDeViaje/id/${lista.getIdViaje()}">Ver descripcion</a></td>
			
		</tr>
		</c:forEach>
	</table>
	<a href="/TpFinal-java/" class="btn btn-primary">Volver a inicio</a>
	</div>
	</div>
	</div>
	<div class="col-md-1"></div>
	</div>
</body>
</html>