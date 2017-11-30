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
	    <link rel="shortcut icon"  href="img/logo.png"type="image/x-icon" />
	    <title>Manejate.com</title>
	</head>
	<body class="bpanel">
	<%@ include file="menuPanel.jsp" %>
	
		<div class="col-lg-2">
			<ul class="nav nav-pills nav-stacked">
			<br/>
			<br/>
			<li role="presentation"><a href="misViajes">Mis viajes</a></li>
  			<li role="presentation"><a href="todosLosViajes">Ver Todos los viajes</a></li>
			</ul>
		</div>
		<div class="col-lg-9  menu-lat">
		 <div class="page-header">
		  
		 <h3>Transporte del viaje: ${viajeNombre}</h3>
  			<table class="table table-hover">
    <thead>
      <tr>
         <th>Calificación</th>
          <th>Descripción</th>
          <th>Llegada</th>
          <th>Lugar</th>
           <th>Precio</th>
            <th>Salida</th>
             <th>Tipo</th>
         

      </tr>
    </thead>
     <c:forEach items="${transporte}" var="t">
       <tbody>

       
      <tr>
        <td>${t.calificacion}</td>
        <td>${t.descripcion}</td>
        <td>${t.llegada}</td>
        <td>${t.lugar}</td>
        <td>${t.precio}</td>
        <td>${t.salida}</td>
        <td>${t.tipo}</td>
      </tr>
    </tbody>
    </c:forEach>
  </table>  
  <h3>Hospedaje del viaje: ${viajeNombre}</h3>
  		<table class="table table-hover">
    <thead>
      <tr>
         <th>Calificación</th>
          <th>Descripción</th>
          <th>Días</th>
          <th>Nombre</th>
           <th>Precio</th>
            <th>Servicios</th>
             <th>Tipo</th>
                 <th>Ubicación</th>
         

      </tr>
    </thead>
     <c:forEach items="${hospedaje}" var="h">
       <tbody>

       
      <tr>
        <td>${h.calificacion}</td>
        <td>${h.descripcion}</td>
        <td>${h.dias}</td>
        <td>${h.nombre}</td>
        <td>${h.precio}</td>
        <td>${h.servicios}</td>
        <td>${h.tipoHospedaje}</td>
        <td>${h.ubicacion}</td>

      </tr>
    </tbody>
    </c:forEach>
 
  </table> 
  			
		</div>
		</div>
	
</body>
</html>