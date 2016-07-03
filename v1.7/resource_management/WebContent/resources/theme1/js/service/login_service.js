/**
 * login service
 */

'use strict';

App.factory('LoginService',['$http','$q',function($http,$q){
	alert("service")
	return{
		
		getCredentials : function(user){
			alert("2")
			console.error(user)
			return $http.post('http://localhost:8085/resource_management/login/user',user)
				.then(
						function(response){
							alert("3")
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