<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<!-- Bootstrap core CSS -->
	<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" >
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <link href="css/style.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <link rel="shortcut icon"  href="img/logo.png"type="image/x-icon" />
	    <title>Manejate.com</title>
	</head>
	<body>		
	<nav class="navbar navmenu">
		<div class="container-fluid">
    	<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
      			<a class="navbar-brand" href="/TpFinal-java/"><img src=img/manejate.png width=150></a>
    		</div>
    	
       		<ul class="nav navbar-nav navbar-right">
       			<li><a href="panel"><strong>Bienvenido, ${nombre}</strong></a></li>
        		<li><a href="cargarTransporte">Carg� tu viaje</a></li>
        		<li><a href="/TpFinal-java/logout">Salir</a></li>
       		</ul>
    	</div>
	</nav>
