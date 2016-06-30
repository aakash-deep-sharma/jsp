/**
 * login controller
 */

'use strict'

App.controller('LoginController',['$scope','LoginService',function($scope,LoginService){
	
	var self = this;
	self.user={name:null,password:'',scpass:''}
	self.message={code:null,msg:''}
	self.getCredentials = function(school){
		
		LoginService.getCredentials(school)
			.then(
					
					function(d){
						
						self.user = d;
					},
					function(errResponse){
						
						console.error('Error while checking credentials');
					}
				);
	};
	
	
}]);