
<%@ include file="header.jsp" %>
	 	<div class="container">
	 	<div class="col-lg-4"></div>
	 	<div class="col-lg-4">
	 	<div class="panel panel-default">
	 	<div class="panel-heading"><label>Crea tu usuario!!</label></div>
	 	<div class="panel-body cargaRuta">
			
			<form:form action="registrar-Usuario" method="POST" modelAttribute="usuario" onsubmit="return validar()">
  			<div class="form-group">
    			<label for="nombre">Nombre:</label>
    			<input type="text" class="form-control" name="nombre" id="nombre" required>
  			</div>
  			<div class="form-group">
   				 <label for="apellido">Apellido:</label>
    			 <input type="text" class="form-control" name="apellido" id="apellido" required>
  			</div>
  			<div class="form-group">
   				 <label for="edad">Edad:</label>
    			 <input type="number" placeholder="" class="form-control" name="edad" id="edad" required>
  			</div>
  			<div class="form-group">
   				 <label for="email">Email:</label>
    			 <input type="email" placeholder="" class="form-control" name="email" id="email"required>
  			</div>
  			<div class="form-group">
   				 <label for="password">Contraseña: </label>
    			 <input type="password" placeholder="" class="form-control" name="password" id="password"required>
  			</div>
  			<div class="form-group">
   				 <label for="rpassword">Repite Contraseña:</label>
   		 <input type="password" placeholder="" class="form-control" name="rpassword" id="rpassword" required>
  			</div>
  			
  				<button type="submit" class="btn btn-default" >Registrarme</button>
  			</form:form>
		</div>
		</div>
		</div>
		<div class="col-lg-4"></div>
		</div>
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<script>
		function validar(){
		var p1 = document.getElementById("password").value;
		var p2 = document.getElementById("rpassword").value;
		if(p1!=p2){
			window.alert("Las contraseñas deben ser iguales");
			 
			   return false;
			   
		}
		}
		</script>
		

