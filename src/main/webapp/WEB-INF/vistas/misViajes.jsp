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
        <h2>Mis Viajes</h2>
    </div>
    

    
    
   <table class="table table-hover">
    <thead>
      <tr>
        <th>Nombre Viaje</th>
         <th>Calificación</th>
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
        <td>${v.sug1}</td>
        <td>${v.sug2}</td>
        <td>${v.sug3}</td>
         <td>
        <form:form action="verDetalles" method="POST" modelAttribute="viaje">
				<input name="idViaje" id="idViaje" type="hidden" value="${v.idViaje}" size="50" type="text">
						<input name="nombre" id="nombre" type="hidden" value="${v.nombre}" size="50" type="text">
				<button type="submit" class="btn btn-info">Ver Detalle</button>
			</form:form></td>
			<td>
			 <form:form action="eliminarRegistros" method="POST" modelAttribute="viaje">
				<input name="idViaje" id="idViaje" type="hidden" value="${v.idViaje}" size="50" type="text">
				<button type="submit" class="btn btn-danger">Eliminar viaje</button>
			</form:form>
        
        </td>
      </tr>
      </c:forEach>
    </tbody>
    
    
    
  </table>          
</div>
</body>
</html>     