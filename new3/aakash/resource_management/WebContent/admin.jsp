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
<script src="<c:url value='/resources/theme1/js/app/app.js' />"></script>
<script src="<c:url value='/resources/theme1/js/controller/resource_controller.js' />"></script>
<script src="<c:url value='/resources/theme1/js/service/resource_service.js' />"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body ng-app="myApp">


			<div ng-controller="resourceController as ctrl">
					<div class="panel panel-default">
			            <div class="panel-heading"><span class="lead">RESOURCE MANAGER </span></div>
							<div class="formcontainer">
								 
								 <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
								 	<input type="hidden" ng-model="ctrl.resource.id" />
								 	
								 	<div class="row">
								 		<div class="form-group col-md-12">
								 			<label class="col-md-2 control-lable" for="rname">Name</label>
								 			<div class="col-md-7">
								 			<input type="text" ng-model="ctrl.resource.rname" name="rname" class="form-control input-sm" placeholder="Enter resource name" required ng-minlength="3"/>
												<div class="has-error" ng-show="myForm.$dirty">
												  <span ng-show="myForm.rname.$error.required">This is a required field</span>
			                                      <span ng-show="myForm.rname.$error.minlength">Minimum length required is 3</span>
			                                      <span ng-show="myForm.rname.$invalid">This field is invalid </span>
												</div>			 			
								 			</div>
								 		</div>
								 	</div>
								 	
								 	<div class="row">
								 		 <div class="form-actions floatRight">
								 		 	<input type="submit"  value="{{!ctrl.resource.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
								 		 	<button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
			                          	</div>
			                      </div>
			                  </form>
			              </div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading"><span class="lead">List of Resources </span></div>
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
			                        <tr ng-repeat="r in ctrl.resourcess">
			                            <td><span ng-bind="r.id"></span></td>
			                            <td><span ng-bind="r.name"></span></td>
			                            <td>
				                          <button type="button" ng-click="ctrl.edit(r.id)" class="btn btn-success custom-width">Edit</button> 
				                          <button type="button" ng-click="ctrl.remove(r.id)" class="btn btn-danger custom-width">Remove</button>
			                            </td>
			                        </tr>
			                    </tbody>
							</table>
						</div>
					</div>
					
			</div>
					
</body>
</html>