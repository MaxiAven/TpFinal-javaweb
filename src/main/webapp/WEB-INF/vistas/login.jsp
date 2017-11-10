<%@ include file="header.jsp" %>
		<div class = "container">
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<div class="panel panel-default">
	 			<div class="panel-heading"><h3>Manejate.com</h3></div>
	 			<div class="panel-body">
	 				<form:form action="validar-login" method="POST" modelAttribute="usuario">
			    		<div class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    						<form:input path="email" id="email" type="email" class="form-control" placeholder="Ingresa tu usuario" />
  						</div><br>
					<%--Elementos de entrada de datos, el elemento path debe indicar en que atributo del objeto usuario se guardan los datos ingresados--%>
						<div class="input-group">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    						<form:input path="password" type="password" id="password" class="form-control" placeholder="Ingresa tu contrase�a"/> 
  						</div><br>
					    		  
					<button class="btn btn-lg btn-primary btn-block" Type="Submit"/>Ingresar</button>
				</form:form>

				<%--Bloque que es visible si el elemento error no está vacío	--%>
				<c:if test="${not empty error}">
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>	
	 			</div>
	 	</div>
		</div>
		<div class="col-lg-3"></div>
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<%--Definicion de un form asociado a la accion /validar-login por POST. Se indica ademas que el model attribute se--%>
				<%--debe referenciar con el nombre usuario, spring mapea los elementos de la vista con los atributos de dicho objeto--%>
					<%--para eso debe coincidir el valor del elemento path de cada input con el nombre de un atributo del objeto --%>
				
			</div>
		</div>
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
