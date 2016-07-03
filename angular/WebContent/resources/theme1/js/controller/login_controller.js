/**
 * login controller
 */

'use strict'

App.controller('LoginController',['$location','$cookies','LoginService',function($location,$cookies,LoginService){
	
	var self = this;
	self.user={username:'',password:'',role:''}
	self.message={code:null,msg:''}
	
	self.getCredentials = function(){
	
		
		LoginService.getCredentials(self.user)
			.then(
					
					function(d){
						
						self.user.role = d;
						console.log(self.user);
						if(self.user.role == 'ADMIN')
						{
							$cookies.put('auth',self.user.role);
						    $location.path("/admin")
						}
						else if(self.user.role == 'USER')
						{
							$cookies.put('auth',self.user.role);
							$location.path("/ptalloc")
						}
						else
						{
							$location.path("/");
							self.message="invalid username or password"
						}
						
					},
					function(errResponse){
						
						console.error('Error while checking credentials');
					}
				);
	};
	
	self.getAuthStatus = function(){
		
		var status = $cookies.get('auth');
		
		if(status)
			{
			return true;
			}
		else
			{
			return false;
			}
	};
	
	self.doLogOut = function(){
		
		$cookies.remove('auth');
	};
	
}]);