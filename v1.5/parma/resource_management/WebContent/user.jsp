<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>user</title>
<base href="/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src = "https://code.angularjs.org/1.5.6/angular.min.js"></script>
<script src="https://code.angularjs.org/1.5.6/angular-route.js"></script>
<script src="<c:url value='/resources/theme1/js/app/app.js' />"></script>
<script src="<c:url value='/resources/theme1/js/controller/team_controller.js' />"></script>
<script src="<c:url value='/resources/theme1/js/service/team_service.js' />"></script>
<script src="<c:url value='/resources/theme1/js/controller/project_controller.js' />"></script>
<script src="<c:url value='/resources/theme1/js/service/project_service.js' />"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


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
<body ng-app="myApp">
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top">
  			<div class="container-fluid">
    			<div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
      			  <a class="navbar-brand" href="resource_management/user.jsp#/ptalloc">RESOURCE MANAGEMENT</a>
   			   </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
				      <ul class="nav navbar-nav">
				        <li class="active"><a href="resource_management/user.jsp#/ptalloc">Home</a></li>
				        <li><a href="resource_management/user.jsp#/teams">Teams</a></li>
				      </ul>
				      <ul class="nav navbar-nav navbar-right">
				        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				      </ul>
			   </div>
  			</div>
		</nav>
		
		<div class="container-fluid" style="padding-top: 200px">
				<ng-view></ng-view>  
		</div>
		
	</div>
	
	
</body>
</html>