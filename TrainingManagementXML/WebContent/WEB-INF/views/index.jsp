<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html ng-app="TrainingManagement">
<head>
<base href="/">
<meta charset="utf-8">
<title>Index</title>

<link rel="stylesheet" href="/TM/resources/css/app.css" />
<link rel="stylesheet" href="/TM/resources/bootstrap/css/bootstrap.css" />

</head>
<body>
	<div id="wrapper">
			
		<hr class="" />
		<ul class="">
			<li><a href="/TM/novaPagina">Cars</a></li>
			<li>Trains</li>
		</ul>
		<hr class="" />
		VIEW:
		<div ng-view></div>

	</div>
	
	<ul class="nav nav-pills">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="#">Profile</a></li>
		<li><a href="#">Messages</a></li>
	</ul>


	<script src="/TM/resources/js/lib/jquery/jquery-1.11.0.js"></script>
	<script src="/TM/resources/bootstrap/js/bootstrap.js"></script>
	<script src="/TM/resources/js/lib/angular/angular.js"></script>
	<script src="/TM/resources/js/lib/angular/angular-route.js"></script>
	<script src="/TM/resources/js/app.js"></script>
	<script src="/TM/resources/js/services.js"></script>
	<script src="/TM/resources/js/filters.js"></script>
	<script src="/TM/resources/js/directives.js"></script>
</body>
</html>