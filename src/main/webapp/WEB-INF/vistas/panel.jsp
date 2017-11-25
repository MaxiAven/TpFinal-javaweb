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
	    <link rel="shortcut icon"  href="img/logo.png"type="image/x-icon" />
	    <title>Manejate.com</title>
	</head>
	<body class="bpanel">
	<%@ include file="menuPanel.jsp" %>
	
		<div class="col-lg-3">
			<ul class="nav nav-pills nav-stacked">
			<br/>
			<br/>
			<li role="presentation" class="active"><a href="#">Mis viajes</a></li>
  			<li role="presentation"><a href="#">Ver Todos los viajes</a></li>
  			<li role="presentation"><a href="#">Algo mas</a></li>
			</ul>
		</div>
		<div class="col-lg-9  menu-lat">
		 <div class="page-header">
  			<h2>Mis Viajes</h2>
		</div>
		</div>
	
</body>
</html>