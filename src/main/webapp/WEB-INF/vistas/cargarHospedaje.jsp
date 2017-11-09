<%@ include file="header.jsp" %>
<!-- <div class="container"> -->
	<div class="col-md-6 col-md-offset-3 fondoFormulario">
	<div class="panel panel-default">
  <div class="panel-heading">Comparte tu Hospedaje!</div>
  <div class="panel-body">
   <form:form action="cargar-hospedaje"  method="POST" modelAttribute="hospedaje">

	 	<div class="form-group">
			<label for="tipoHospedaje">Tipo Hopedaje:</label>
			<input type="text" class="form-control" name="tipoHospedaje" id="tipoHospedaje">
		</div>
				
			
				
				<div class="form-group">
					  <label for="descripcion">Descripción:</label>
					  <textarea class="form-control" rows="3" name="descripcion" id="descripcion"></textarea>
				</div>
				
				
				
				<button type="submit" class="btn btn-default">Cargar Hospedaje</button>
	 	
	 	</form:form>
  </div>
</div>
	 	
	 
	 	</div>
	 	