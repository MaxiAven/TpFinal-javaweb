<%@ include file="header.jsp" %>
	 	<div class="container">
	 	<div class="col-lg-4"></div>
	 	<div class="col-lg-4">
	 	<div class="panel panel-default">
	 	<div class="panel-heading">Registro Usuario</div>
	 	<div class="panel-body registroUsuario">
			
			<form:form action="registro-usuario" method="POST" modelAttribute="registro">
			<div class="form-group">
   				 <label for="llegada">Cantidad de personas:</label>
   				 <input type="text" class="form-control" name="cantidadPersonas" id="cantidadPersonas">
   				 </div>
   				 <button type="submit" class="btn btn-default">Registrarme</button>
			</form:form>
		
		</div>
		</div>
		</div>
		</div>
		
		
