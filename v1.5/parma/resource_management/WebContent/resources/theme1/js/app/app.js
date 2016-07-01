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

