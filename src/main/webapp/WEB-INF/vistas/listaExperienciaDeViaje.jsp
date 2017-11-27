


<%@ include file="header.jsp" %>
	<div class="container">
	<div class="col-md-1"></div>
	<div class="col-md-10">
	<div class="panel panel-default">
	<div class="panel-heading"><h3>Elegí a donde ir</h3></div>
	<div class="panel-body cargaRuta">
<c:forEach var="lista" items="${lista}">
<p>el nombre del viaje es:  ${lista.getNombre()}</p>
<p>el hospedaje es: ${lista.getHospedaje().getNombre()}</p>
</c:forEach>

</div>
</div>
</div>
</div>
