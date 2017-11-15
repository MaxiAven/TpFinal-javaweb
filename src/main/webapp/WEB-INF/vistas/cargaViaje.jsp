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
	</head>
	<body>
<!-- menu que el usuario al logearse -->
<%@ include file="menuPanel.jsp" %>
	
	 	<div class="container">
	 	<div class="col-lg-2"></div>
	 	<div class="col-lg-8">
	 	<div class="panel panel-default">
	 	<div class="panel-heading">Carga tu Viaje</div>
	 	<div class="panel-body cargaRuta">
			<form:form action="cargar-viaje" method="POST" modelAttribute="viaje">
			<div class="col-lg-4">
  			<div class="form-group">
    			<label for="salida">Salida:</label>
    			<input type="text" class="form-control" name="salida" id="salida">
  			</div>
  			</div>
  			<div class="col-lg-4">
  			<div class="form-group">
   				 <label for="llegada">Llegada</label>
    			 <input type="text" class="form-control" name="llegada" id="llegada">
  			</div>
  			</div>
  			<div class="col-lg-4">
  			<div class="form-group">

   				 <label for="lugar">Tipo De Destino:</label>
   				 	<select class="form-control" name="lugar" id="lugar">
   				 		<option value="">Seleccione un Destino</option>
   				 		<option value="playa">Playa</option>
   				 		<option value="montana">Montaña</option>
   				 		<option value="ciudad">Ciudad</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
   				
   			</div>
   			</div>
   			
 <!-- Comento TIPO HOSPEDAJE -->
 
   			<!--  <div class="col-lg-4">
  			<div class="form-group">
   				 <label for="llegada">Tipo Hospedaje:</label>
   				 	<select class="form-control" name="tipoHospedaje" id="tipoHospedaje">
   				 		<option value="">Seleccione una opción</option>
   				 		<option value="hotel">Hotel</option>
   				 		<option value="hostel">Hostel</option>
   				 		<option value="casa">Casa</option>
   				 		<option value="departamento">Departamento</option>
   				 		<option value="otros">Otros</option>
   				 	</select>
   				 <!-- <select class="form-control" name="tipoHospedaje" id="tipoHospedaje">

   				 <label for="llegada">Tipo Hospedaje:</label>
   				 <select class="form-control" name="tipoHospeaje" id="tipoHospeaje">

   				 	<option value="">Seleccione una opción</option>
   				 	<c:forEach items="${listaHospedaje}" var="lista">
   				 		<option value="${lista.getTipoHospedaje()}">${lista.getTipoHospedaje()}</option>
   				 	</c:forEach>
   				 	

   				 </select> 


   			</div>
   			</div> -->
   			<div class="col-lg-4">
   			<div class="form-group">
   				 <label for="llegada">Cantidad de días:</label>

   				 <input type="text" class="form-control" name="cantidadDias" id="cantidadDias">
   				 <!--<select class="form-control" name="cantidadDias" id="cantidadDias">

   				 <select class="form-control" name="cantidadDias" id="cantidadDias">

   				 	<option value="">Seleccione una opción</option>
   				 		<option value="4">4</option>
   				 		<option value="7">7</option>
   				 		<option value="15">15</option>
   				 		<option value="30">30</option>

   				 </select>-->
   			</div>
   			</div>
   			<div class="col-lg-4">
   			<div class="form-group">
   				 <label for="llegada">Cantidad de personas:</label>
   				 <input type="number" class="form-control" name="cantidadPersonas" id="cantidadPersonas">
   				 <!-- <select class="form-control" name="cantidadPersonas" id="cantidadPersonas">

   				 </select>
   			</div>
   			<div class="form-group">
   				 <label for="llegada">Cantidad de personas:</label>
   				 <select class="form-control" name="cantidadPersonas" id="cantidadPersonas">

   				 	<option value="">Seleccione una opción</option>
   				 		<option value="2">2</option>
   				 		<option value="3">3</option>
   				 		<option value="5">5</option>

   				 </select>-->

   			</div>
   			</div>
   			<div class="col-lg-6">
   			<div class="form-group">
    			<label for="precio">Precio:</label>
    			<input type="number" class="form-control" name="precio" id="precio">
  			</div>
  			</div>
  			<div class="col-lg-6">
  			<div class="form-group">

    			<label for="calificacion">Calificación del Viaje:</label>
    			<div class="estrellas">
    				<input type="hidden" class="form-control" name="calificacion" id="calificacion" value="0">
    			</div>
  			</div> 
  			</div>
  			<div class="col-lg-12">
  			<div class="form-group">

    			<label for="descripcion">Comentario:</label>
    			<textarea class="form-control" name="descripcion" id="descripcion"></textarea>
  			</div>
  			
  			    <script type="text/javascript">
            function toggle(elemento) {
                   if(elemento.value=="si"){
                       document.getElementById("uno").style.display = "block";
                       document.getElementById("dos").style.display = "none";
                   }else{
                       if(elemento.value=="no"){
                           document.getElementById("uno").style.display = "none";
                           document.getElementById("dos").style.display = "block";
                       }  
                   }
                }
            
    </script>
    
    
    
        <div class="form-group">
        <dl>
            <dt><label for="tieneHospedaje">Quiere contarnos su hospedaje?</label></dt>
            <dd>
                <input type="radio" name="tieneHospedaje" onclick="toggle(this)" value="si" > Quiero aportar información de un Hospedaje Turístico<br>
                <input type="radio" name="tieneHospedaje" onclick="toggle(this)" value="no"> No, gracias!<br>
            </dd>
        </dl>
    </div>
    
    </form:form>
     
    <div id="uno" style="display:none">
    		
    	
    		<button class="btn btn-primary" type="submit" onClick="window.open('/TpFinal-java/cargarHospedaje')">Cargar mi Viaje y deseo cargar Hospedaje</button>
    </div>
    
      <div id="dos" style="display:none">
    		<button class="btn btn-primary" type="submit">Cargar sólo mi Viaje</button>
    </div>
    
    			 
  			
					
					<button class="btn btn-default" type="reset">Limpiar todo</button>
				
  				
  			
		</div>
		</div>
		</div>
		<div class="col-lg-2"></div>
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

