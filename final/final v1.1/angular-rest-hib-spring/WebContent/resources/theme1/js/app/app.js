/**
 *  app
 */

'use strict';

var App = angular.module('myApp',["ngRoute","ui.router","ngCookies"]);




App.config(function ($stateProvider,$urlRouterProvider,$urlMatcherFactoryProvider) {

	$urlRouterProvider.otherwise('/project');
	$urlMatcherFactoryProvider.caseInsensitive(true);
	
    $stateProvider.state('login', {
      url:'/',
      templateUrl: 'login.jsp',
      controller:'LoginController',
	  controllerAs: 'ctrl'
    })
    .state('teams',{
    	url:'/teams',
    	templateUrl:'team.jsp',
		controller:'TeamController',
		controllerAs: 'ctrl',
		authenticated:true
    })
    .state('project',{
    	url:'/project',
    	templateUrl:'project.jsp',
		controller:'ProjectController',
		controllerAs:'pctrl',
		authenticated:true
    })
    .state('admin',{
    	url:'/admin',
    	templateUrl:'admin.jsp',
		controller:'ResourceController',
		controllerAs: 'ctrl',
		authenticated:true
    })
    .state('resource',{
    	url:'/resource/:no',
    	templateUrl:"admin.jsp",
		controller:"ResourceController",
		controllerAs: "ctrl",
		authenticated:true
    });
});


App.run(function($state,$location,$rootScope,Login){
	
	$rootScope.$on('$stateChangeSuccess',function(event,next,current,previous){
		
		/*console.log($state);
		console.log(current);
		console.log(next);
		console.log(event);
		console.log(previous);*/
		if(next.authenticated){
			
			if(!Login.getAuthStatus())
				{
					$state.transitionTo('login');
				}
			
		}
		
		if(next.url == '/'){
			
			if(Login.getAuthStatus())
				{
					$state.transitionTo(previous.name);
				}
		}
		
		if(next.url == '/admin'){
			
			if(Login.getPermission() == 'USER')
				{
					$state.transitionTo(previous.name);
				}
		}
		
	})
});


