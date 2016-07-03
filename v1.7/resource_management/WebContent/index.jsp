<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script src = "https://code.angularjs.org/1.5.6/angular.min.js"></script>
<script src="https://code.angularjs.org/1.5.6/angular-route.js"></script>
<script src="<c:url value="/resources/theme1/js/app/app.js"/>"></script>
<script src="<c:url value="/resources/theme1/js/service/login_service.js" />"></script>
<script src="<c:url value="/resources/theme1/js/controller/login_controller.js" />"></script>
<link href="<c:url value="/resources/theme1/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body ng-app="myApp">
<h1>HELLO</h1>

	

    <div>
    	<ng-view></ng-view>  
    </div>
  

</body>
</html>