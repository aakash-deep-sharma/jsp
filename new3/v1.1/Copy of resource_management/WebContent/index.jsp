<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
<script src="<c:url value="/resources/theme1/js/app/app.js"/>"></script>
<script src="<c:url value="/resources/theme1/js/service/login_service.js" />"></script>
<script src="<c:url value="/resources/theme1/js/controller/login_controller.js" />"></script>
<link href="<c:url value="/resources/theme1/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body ng-app="myApp">

		<div class="container">
		  <div class="row">
		    <div class="Absolute-Center is-Responsive">
		      <div class="panel panel-primary " >
		      	  <div class="panel-heading"><span style="padding-left: 1.3cm;">RESOURCE MANAGEMENT</span></div>
			      <div class="col-sm-12 col-md-10 col-md-offset-1">
			      
				      <div class="panel-body" ng-controller="LoginController as ctrl">
				        
				        <form ng-submit="ctrl.getCredentials()" name="loginForm">
				          
				          <div class="form-group input-group">
				            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				            <input class="form-control" ng-model="ctrl.user.name"type="text" name='username' placeholder="username" required ng-minlength="3"/>          	
				          </div>
				          <div class="has-error" ng-show="loginForm.$dirty">
								  <span ng-show="loginForm.username.$error.required">This is a required field</span>
                                  <span ng-show="loginForm.username.$error.minlength">Minimum length required is 3</span>
						  </div>
				          
				          <div class="form-group input-group">
				            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				            <input class="form-control" ng-model="ctrl.user.password" type="password" name='password' placeholder="password" required ng-minlength="5"/>     	
				          </div>
				          <div class="has-error" ng-show="loginForm.$dirty">
							  <span ng-show="loginForm.password.$error.required">This is a required field</span>
                              <span ng-show="loginForm.password.$error.minlength">Minimum length required is 5</span>
						  </div>
				          <div class="form-group">
				          	<input type="submit"  value="LOGIN" class="btn btn-info btn-block" ng-disabled="loginForm.$invalid">
				          </div>
				          
				        </form>        
				      </div>
				       
			      </div>
			 </div> 
		    </div>    
		  </div>
		</div>

</body>
</html>