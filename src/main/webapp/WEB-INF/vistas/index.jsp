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
    		<div class="col-lg-10">
    		<form:form action="listaResultado" method="GET">
    		 <div class="col-lg-7">
    			
    		 	<input type="text"  value=0 class="form-control input-lg" name="precio" id="precio" placeholder="Ingresa tu presupuesto (ej: $1000)">
    		 	
    		 </div>
    		 <div class="col-lg-3">
    		
    		 	<select class="form-control input-lg" name=lugar>
    		 		<option value= >Eleg� tu lugar</option>
    		 		<option value=playa>Playa</option>
    		 		<option value=montana>Monta�a</option>
    		 		<option value=ciudad>Ciudad</option>
    		 		<option value="otros">Otros</option>
    		 	</select>
    		 </div>
    		 <div class="col-lg-2">
    		 	<input type="submit" class="btn btn-default btn-lg" value="Buscar">
    		 </div>
    		 </form:form>
    		 
    		
    		  	 <!-- div que contiene buscador de sugerencias -->
    		 <div class="col-lg-12 links">
	    	
	  			<a href="#" id="btnSug" style="color:#fff; font-size:18px;"><strong>Buscar sugerencias de destinos</strong></a>
				<a href="#" id="btnSugOcultar" style="color:#fff; font-size:18px;"><strong>Ocultar busqueda</strong></a>
				<div id="sugerencias">
				  <form:form action="listaDestino" method="GET">
					<div class="panel panel-default">
						<div class="panel-heading" style="background:#270672">
							<h3 style="color:#fff">Busca las mejores referencias de tu destino</h3>
						</div>
						<div class="panel-body tablaSugerencia">
							<div class="col-lg-3">
						    		 
						<select class="form-control" name=lugar>
						   <option value= >Eleg� tu lugar</option>
						   <option value=playa>Playa</option>
						   <option value=montana>Monta�a</option>
						   <option value=ciudad>Ciudad</option>
						   <option value="otros">Otros</option>
						</select>
					</div>
					<div class="col-lg-2">
						<input type="submit" class="btn btn-default" value="Buscar">
				    </div>
						</div>
					</div>
				
								
					
			    </form:form>
				</div>
			</div>
			
			
		<!-- fin div que contiene buscador de sugerencias -->
			<div class="col-lg-12">
			
			</div>
			
			<div class="col-lg-12">
			<div class="panel panel-default">
			 <div class="panel-heading" style="background:#270672">
				<h3 style="color:#fff">Los 5 viajes con mayor calificaci�n </h3>	
			</div>
    		 <div class="panel-body tablaSugerencia">
    		
			    		<table class="table table-condensed">
								<tr>
									<th>Nombre del Viaje</th>
									<th>Destino</th>
									<th>Calificaci�n</th>
									<th>Usuario</th>
									<th>Detalles</th>
								</tr>
								<c:forEach items ="${lista}" var= "lista">
								<tr>
									<td>${lista.getNombre()}</td>
									<td>${lista.getTransporte().getLlegada()}</td>
								    <td>${lista.getCalificacion()}</td>
									<td>${lista.getUsuario().getNombre()} ${lista.getUsuario().getApellido()}</td>
									<td><a href="listaExperienciaDeViaje/id/${lista.getIdViaje()}">Ver descripcion</a></td>
		
								</tr>
								</c:forEach>
						</table>
					</div>
					</div>
			</div>
			<!-- fin panel  -->
				</div>			    		 
    </div>
    	
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script src="js/starrr.js"></script>
		<script src="js/calificacion.js"></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script src="js/funciones.js" type="text/javascript"></script>
		
		
	</body>
</html>
