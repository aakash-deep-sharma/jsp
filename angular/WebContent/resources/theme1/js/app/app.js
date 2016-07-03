/**
 *  app
 */

'use strict';

var App = angular.module('myApp',["ngRoute","ngCookies"]);

App.config(function($routeProvider){
	
	$routeProvider
		.when("/",{
			templateUrl:"login.jsp",
			controller:"LoginController",
			controllerAs: "ctrl"
		})
		.when("/admin",{
			templateUrl:"admin.jsp",
			controller:"ResourceController",
			authenticated:true
			
		})
		.when("/teams",{
			templateUrl:"team.jsp",
			controller:"TeamController",
			controllerAs: "ctrl",
			authenticated:true
		})
		.when("/ptalloc",{
			templateUrl:"project.jsp",
			controller:"ProjectController",
			controllerAs:"pctrl",
			authenticated:true
		})
		.otherwise({
            redirectTo: "/"
        })
		
});

App.run('$rootScope','$location','Login',function($rootScope,$location,Login){
	
	$rootScope.$on('$routeChangeStart',function(event,next,current){
	
		if(next.$$route.authenticated)
			{
			if(!Login.getAuthStatus())
				{
				$location.path('/')
				}
			}
		
		if(next.$$route.originalPath == '/')
			{
			if(Login.getAuthStatus())
				{
				$location.path(current.$$route.originalPath);
				}
			}
	})
	
	
});
