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
		<link href="css/starrr.css" rel="stylesheet" >
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <link href="css/style.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
<body class="bpanel">
<jsp:include page="menuPanel.jsp" />
<div class="col-lg-2">
			<ul class="nav nav-pills nav-stacked">
			<br/>
			<br/>
			<li role="presentation"><a href="misViajes">Mis viajes</a></li>
  			<li role="presentation"><a href="todosLosViajes">Ver Todos los viajes</a></li>
  			<li role="presentation"><a href="#">Algo mas</a></li>
			</ul>
		</div>
		<div class="col-lg-9  menu-lat">
		 <div class="page-header">
  			<h2>Todos los viajes</h2>
		</div>
		<!--<c:if test="${not empty listaVacia}">
			        <div class="alert alert-danger" role="alert">${listaVacia}</div>
			        <br>
		        </c:if>	-->
		         <table class="table table-hover">
    <thead>
      <tr>
        <th>Nombre del viaje</th>
        <th>Usuario</th>
        <th>Destino</th>
      </tr>
    </thead>
     <c:forEach items="${listarViajes}" var="lista">
    <tbody>
      <tr>
        <td>${lista.getNombre()}</td>
        <td>${lista.usuario.getNombre()}</td>
        <td>${lista.transporte.getLlegada() }</td>
        <td><a href="listaExperienciaDeViaje/id/${lista.getIdViaje()}">Ver detalles</a></td>
      </tr>
    </tbody>
    </c:forEach>
  </table>		      
</div>
</body>
</html>