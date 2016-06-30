<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.3.1/angular-ui-router.min.js"></script>
<script src="<c:url value='/resources/theme1/js/app/app.js' />"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>user</title>
<style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>
</head>
<body>
	
		<nav class="navbar navbar-inverse navbar-fixed-top">
  			<div class="container-fluid">
    			<div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
      			  <a class="navbar-brand" href="#">RESOURCE MANAGEMENT</a>
   			   </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
				      <ul class="nav navbar-nav">
				        <li class="active"><a href="#">Home</a></li>
				        <li><a href="#">Projects</a></li>
				        <li><a href="#">Teams</a></li>
				        <li><a href="#">Resources</a></li>
				      </ul>
				      <ul class="nav navbar-nav navbar-right">
				        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				      </ul>
			   </div>
  			</div>
		</nav>
		
		<div class="container-fluid" >
				<ui-view></ui-view>	  
		</div>
		
	
</body>
</html>