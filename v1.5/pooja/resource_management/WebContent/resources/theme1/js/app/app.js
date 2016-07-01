/**
 *  app
 */

'use strict';

var App = angular.module('myApp',["ngRoute"]);

App.config(function($routeProvider){
	
	$routeProvider
		.when("/teams",{
			templateUrl:"resource_management/team.jsp",
			controller:"TeamController",
			controllerAs: "ctrl"
		})
	
})
/*.controller("homeController",function($scope){
	alert("hello")
	$scope.message="homePage";
})*/

