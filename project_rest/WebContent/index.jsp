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
<script src="<c:url value='/resources/theme1/js/app.js' />"></script>
<script src="<c:url value='/resources/theme1/js/service/student_service.js' />"></script>
<script src="<c:url value='/resources/theme1/js/controller/student_controller.js' />"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body ng-app="myApp">


<div ng-controller="StudentController as ctrl">
		<div class="panel panel-default">
            <div class="panel-heading"><span class="lead">User Registration Form </span></div>
				<div class="formcontainer">
					 <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
					 	<input type="hidden" ng-model="ctrl.student.id" />
					 	
					 	<div class="row">
					 		<div class="form-group col-md-12">
					 			<label class="col-md-2 control-lable" for="uname">Name</label>
					 			<div class="col-md-7">
					 			<input type="text" ng-model="ctrl.student.name" id="sname" class="sname form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
									<div class="has-error" ng-show="myForm.$dirty">
									  <span ng-show="myForm.sname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.sname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.sname.$invalid">This field is invalid </span>
									</div>			 			
					 			</div>
					 		</div>
					 	</div>
					 	
					 	<div class="row">
					 		 <div class="form-actions floatRight">
					 		 	<input type="submit"  value="{{!ctrl.student.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
					 		 	<button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          	</div>
                      </div>
                  </form>
              </div>
		</div>
		
		<div class="panel panel-default">
			<div class="panel-heading"><span class="lead">List of Users </span></div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
                       <tr>
                           <th>ID.</th>
                           <th>Name</th>
                           <th width="20%"></th>
                       </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="s in ctrl.students">
                            <td><span ng-bind="s.id"></span></td>
                            <td><span ng-bind="s.name"></span></td>
                            <td>
	                          <button type="button" ng-click="ctrl.edit(s.id)" class="btn btn-success custom-width">Edit</button> 
	                          <button type="button" ng-click="ctrl.remove(s.id)" class="btn btn-danger custom-width">Remove</button>
                            </td>
                        </tr>
                    </tbody>
				</table>
			</div>
		</div>
		
</div>
					













<!-- <div ng-controller="StudentController as ctrl">
<div class="formcontainer">

			<table class="table table-hover">
                  <thead>
                      <tr>
                          <th>ID.</th>
                          <th>Name</th>
                      </tr>
                  </thead>
                  <tbody>
                      <tr>
                          <td><span ng-bind="ctrl.student.id"></span></td>
                          <td><span ng-bind="ctrl.student.name"></span></td>
                      </tr>
                  </tbody>
            </table>


		<form ng-submit="ctrl.fetchStudent(ctrl.student.id)" name="myForm" class="form-horizontal">
			ID :<input type="text" ng-model="ctrl.student.id" />
			<input type="submit"  value="SUBMIT" >
		</form>
</div>

</div>

 <div  ng-controller="StudentController as ctrl">
 
			<table class="table table-hover">
                  <thead>
                      <tr>
                          <th>ID.</th>
                          <th>Name</th>
                      </tr>
                  </thead>
                  <tbody>
                      <tr ng-repeat="u in ctrl.students">
                          <td><span ng-bind="u.id"></span></td>
                          <td><span ng-bind="u.name"></span></td>
                      </tr>
                  </tbody>
            </table>
 			<button type="button" ng-click="ctrl.fetchAllStudents()">SHOW</button>
 </div>
 
 -->
</body>
</html>