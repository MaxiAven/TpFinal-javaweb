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
  			<h2>Mis Viajes</h2>
		</div>
		<!--<c:if test="${not empty listaVacia}">
			        <div class="alert alert-danger" role="alert">${listaVacia}</div>
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
        <h2>Mis Viajes</h2>
    </div>
    <!--<c:if test="${not empty listaVacia}">
              <div class="alert alert-danger" role="alert">${listaVacia}</div>
              <br>
            </c:if> -->
             <table class="table table-hover">
    <thead>
      <tr>
        <th>Nombre Viaje</th>
         <th>Calificación</th>
          <th>Imagen</th>
          <th>Imagen</th>
          <th>Imagen</th>
          <th>Sugerencia</th>
          <th>Sugerencia</th>
          <th>Sugerencia</th>

      </tr>
    </thead>
     <c:forEach items="${viaje}" var="v">
       <tbody>
      <tr>
        <td>${v.nombre}</td>
        <td>${v.calificacion}</td>
        <td>${v.img1}</td>
        <td>${v.img2}</td>
        <td>${v.img3}</td>
        <td>${v.sug1}</td>
        <td>${v.sug2}</td>
        <td>${v.sug3}</td>

      </tr>
    </tbody>
    </c:forEach>
  </table>          
</div>
</body>
</html>        <br>
		        </c:if>	-->
		         <table class="table table-hover">
    <thead>
      <tr>
        <th>Nombre Viaje</th>
         <th>Calificación</th>
          <th>Imagen</th>
          <th>Imagen</th>
          <th>Imagen</th>
          <th>Sugerencia</th>
          <th>Sugerencia</th>
          <th>Sugerencia</th>

      </tr>
    </thead>
     <c:forEach items="${viaje}" var="v">
       <tbody>
      <tr>
        <td>${v.nombre}</td>
        <td>${v.calificacion}</td>
        <td>${v.img1}</td>
        <td>${v.img2}</td>
        <td>${v.img3}</td>
        <td>${v.sug1}</td>
        <td>${v.sug2}</td>
        <td>${v.sug3}</td>

      </tr>
    </tbody>
    </c:forEach>
  </table>		      
</div>
</body>
</html>
