/**
 * login service
 */

'use strict';

App.factory('LoginService',['$http','$q',function($http,$q){
	
	return{
		
		getCredentials : function(user){
			
			console.error(user)
			return $http.post('http://localhost:8085/resource_management/login/user',user)
				.then(
						function(response){
							
                        	console.error(response.data)
                            return response.data;
                        }, 
                        function(errResponse){
                            console.error('Error while checking credentials');
                            return $q.reject(errResponse);
                        }
					);
		}
	};
	
	
	
}]);

App.factory('Login',function(){
	
	return{
		
		getAuthStatus : function(){
			
			var status = $cookies.get('auth');
			
			if(status)
				{
				return true;
				}
			else
				{
				return false;
				}
		}
	};
	
	
	
});