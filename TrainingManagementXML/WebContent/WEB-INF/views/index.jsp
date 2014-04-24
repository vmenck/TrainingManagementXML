<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" ng-app="TrainingManagement">
	<head>
	    <meta charset="utf-8">
	    <title>Service App</title>
	    <link rel="stylesheet" href="resources/css/app.css"/>
	    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css" />
	</head>
	<body>
		<div id="wrapper">
			
			<hr class="" />
		    <ul class="menu">
		        <li>Cars</li>
		        <li>Trains</li>
		    </ul>
		    <hr class="" />
		    <div ng-view></div>
		
		</div>
		
		<div class="btn-group">
		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		    Action <span class="caret"></span>
		  </button>
		  <ul class="dropdown-menu" role="menu">
		    <li><a href="#">Action</a></li>
		    <li><a href="#">Another action</a></li>
		    <li><a href="#">Something else here</a></li>
		    <li class="divider"></li>
		    <li><a href="#">Separated link</a></li>
		  </ul>
		</div>
				
				
		<!-- Table -->
      <table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>	
      
      <ul class="nav nav-pills">
  <li class="active"><a href="#">Home</a></li>
  <li><a href="#">Profile</a></li>
  <li><a href="#">Messages</a></li>
</ul>	
				
				
		<script src="resources/js/lib/jquery/jquery-1.11.0.js"></script>
		<script src="resources/bootstrap/js/bootstrap.js"></script>
		<script src="resources/js/lib/angular/angular.js"></script>
		<script src="resources/js/lib/angular/angular-route.js"></script>
		<script src="resources/js/app.js"></script>
		<script src="resources/js/services.js"></script>
		<script src="resources/js/filters.js"></script>
		<script src="resources/js/directives.js"></script>
	</body>
</html>