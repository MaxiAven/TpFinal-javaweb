<%@ include file="header.jsp" %>
		<div class="container buscador">
			<div class="col-lg-1"></div>
			<form:form action="listaResultado" method="GET">
    		<div class="col-lg-10">
    		 <div class="col-lg-7">
    		
    		 	<input type="text" value=10000 class="form-control input-lg" name="precio" id="precio" placeholder="Ingresa tu presupuesto (ej: $1000)">
    		 	
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
    		<div class="col-lg-1"></div>
    	</div>
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
