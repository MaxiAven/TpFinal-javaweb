<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${nombre != null}" > 	
<jsp:include page="menuPanel.jsp" />
</c:if>
<c:if test="${nombre == null}" > 	
<jsp:include page="header.jsp" />
</c:if>
		<div class="container buscador">
			<div class="col-lg-1"></div>
			<form:form action="listaResultado" method="GET">
    		<div class="col-lg-10">
    		 <div class="col-lg-7">
    		
    		 	<input type="text"  value=0 class="form-control input-lg" name="precio" id="precio" placeholder="Ingresa tu presupuesto (ej: $1000)">
    		 	
    		 </div>
    		 <div class="col-lg-3">
    		 
    		 	<select class="form-control input-lg" name=lugar>
    		 		<option value= >Elegí tu lugar</option>
    		 		<option value=playa>Playa</option>
    		 		<option value=montana>Montaña</option>
    		 		<option value=ciudad>Ciudad</option>
    		 		<option value="otros">Otros</option>
    		 	</select>
    		 </div>
    		 <div class="col-lg-2">
    		 	<input type="submit" class="btn btn-default btn-lg" value="Buscar">
    		 </div>
    	
    		</div>
    		</form:form>
    		
    		<form:form action="listaDestino" method="GET">
			
			<div class="col-lg-10">
				<div class="col-lg-10">
					<h3>Busca las mejores referencias de tu destino</h3>
				</div>
			</div>
    		<div class="col-lg-10">

	    		 <div class="col-lg-4">
	    		 
	    		 	<select class="form-control input-lg" name=lugar>
	    		 		<option value= >Elegí tu lugar</option>
	    		 		<option value=playa>Playa</option>
	    		 		<option value=montana>Montaña</option>
	    		 		<option value=ciudad>Ciudad</option>
	    		 		<option value="otros">Otros</option>
	    		 	</select>
	    		 </div>
    		 <div class="col-lg-2">
    		 	<input type="submit" class="btn btn-default btn-lg" value="Buscar">
    		 </div>
    	
    		</div>
    		</form:form>
    		
	
    		<div class="col-lg-10">
				<div class="col-lg-10">
					<h3>Los 5 viajes con mayor calificación </h3>
				</div>
			
	    		<table class="table table-condensed">
						<tr>
							<th>Nombre del Viaje</th>
							<th>Destino</th>
							<th>Calificación</th>
							<th>Usuario</th>
							<th>Detalles</th>
						</tr>
						<c:forEach items ="${lista}" var= "lista">
						<tr>
							<td>${lista.getNombre()}</td>
							<td>${lista.getTransporte().getLlegada()}</td>
						    <td>${lista.getCalificacion()}</td>
							<td>${lista.getUsuario().getEmail()}</td>
							<td><a href="listaExperienciaDeViaje/id/${lista.getIdViaje()}">Ver descripcion</a></td>

						</tr>
						</c:forEach>
					</table>
					
			</div>
    		
    		
    		<div class="col-lg-1"></div>
    	</div>
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
