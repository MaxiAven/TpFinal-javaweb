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
			
		</c:forEach>
   </div>
    </div>
	</body>
	</html>