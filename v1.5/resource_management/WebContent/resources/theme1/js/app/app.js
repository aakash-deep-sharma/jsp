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
		.when("/ptalloc",{
			templateUrl:"resource_management/project.jsp",
			controller:"ProjectController",
			controllerAs:"pctrl"
		})
		.when("/rsalloc",{
			templateUrl:"resource_management/resalloc.jsp",
			controller:"ProjectController",
			controllerAs:"ctrl"
		})
		.otherwise({
            redirectTo: "/resource"
        })
		/*
		.when("/confirm",{
			templateUrl:"",
			controller:"",
			controllerAs:""
		})
		otherwise({
            redirectTo: "/teams"
        });*/
})

