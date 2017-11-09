<%@ include file="header.jsp" %>
		<div class="container buscador">
			<div class="col-lg-1"></div>
			<form:form action="listaResultado" method="GET">
    		<div class="col-lg-10">
    		 <div class="col-lg-7">
    		 	<input type="text" class="form-control input-lg" name="precio" id="precio" placeholder="Ingresa tu presupuesto (ej: $1000)">
    		 	
    		 </div>
    		 <div class="col-lg-3">
    		 
    		 	<select class="form-control input-lg">
    		 		<option>Elegí tu lugar</option>
    		 		<option>Playa</option>
    		 		<option>Montaña</option>
    		 		<option>Ciudad</option>
    		 	</select>
    		 </div>
    		 <div class="col-lg-2">
    		 	<input type="submit" class="btn btn-default btn-lg" value="Buscar">
    		 </div>
    		 
    		 <!--  <div class="col-lg-12 reg">
    			<p class="bg-info">
    				Compartí tus viajes <a href="#">registrandote</a> acá
    			</p>
    		</div>-->
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
