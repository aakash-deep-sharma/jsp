/**
 * login controller
 */

'use strict'

App.controller('LoginController',['$location','LoginService',function($location,LoginService){
	alert("controller")
	var self = this;
	self.user={username:'',password:'',role:''}
	self.message={code:null,msg:''}
	
	self.getCredentials = function(){
		alert("1")
		
		LoginService.getCredentials(self.user)
			.then(
					
					function(d){
						alert("4")
						self.user.role = d;
						console.log(self.user);
						if(self.user.role == 'ADMIN')
						{
						
						$location.path("/admin")
						
						}
						
					},
					function(errResponse){
						
						console.error('Error while checking credentials');
					}
				);
	};
	
	
}]);