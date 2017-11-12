<%@ include file="header.jsp"%>
<!-- <div class="container"> -->
<div class="col-md-6 col-md-offset-3 fondoFormulario">
	<div class="panel panel-default">
		<div class="panel-heading">Contanos sobre tu Hospedaje!</div>
		<div class="panel-body">
			<form:form action="cargar-hospedaje" method="POST"
				modelAttribute="hospedaje">

				<div class="form-group">
					<label for="tipoHospedaje">Tipo Hopedaje:</label> <input
						type="text" class="form-control" name="tipoHospedaje"
						id="tipoHospedaje">
				</div>


				<div class="form-group">
					<label for="nombre">Nombre del hospedaje:</label> <input
						type="text" class="form-control" name="nombre" id="nombre">
				</div>

				<div class="form-group">
					<label for="ubicacion">Ubicación del hospedaje:</label> <input
						type="text" class="form-control" name="ubicacion" id="ubicacion">
				</div>

				<div class="form-group">
					<label for="precio">Precio por noche:</label> <input type="text"
						class="form-control" name="precio" id="precio">
				</div>


				<div class="form-group">
					<label for="descripcion">Descripción:</label>
					<textarea class="form-control" rows="3" name="descripcion"
						id="descripcion"></textarea>
				</div>

				<div class="form-group">
					<input name="img1" id="img1" type="file" class="file"
						data-preview-file-type="any" required>
				</div>

				<div class="form-group">
					<input name="img2" id="img2" type="file" class="file"
						data-preview-file-type="any" required>
				</div>

				<div class="form-group">
					<input name="img3" id="img3" type="file" class="file"
						data-preview-file-type="any" required>
				</div>



				<button type="submit" class="btn btn-default">Cargar
					Hospedaje</button>

			</form:form>
		</div>
	</div>


</div>
