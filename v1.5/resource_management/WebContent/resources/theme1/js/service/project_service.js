/**
 * resource service
 */

'use strict';

App.factory('ProjectService',['$http','$q',function($http,$q){
	
	return {
        
		
		createProject: function(project)
		{
			alert("2")
			return $http.put('http://localhost:8085/resource_management/projectManager/createProject',project)
					.then(
							function(response){
								alert("3")
								  return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while creating project');
                                return $q.reject(errResponse);
                            }
					
					);
		},
		createTeam: function(team)
		{
			alert("2")
			return $http.put('http://localhost:8085/resource_management/projectManager/createTeam',team)
					.then(
							function(response){
								alert("3")
	                            return response.data;
	                        }, 
	                        function(errResponse){
	                            console.error('Error while creating team');
	                            return $q.reject(errResponse);
	                        }
					
					);
		},

		
		assignResource:function(rId,tId)
		{
			alert("assign res")
			return $http.get('http://localhost:8085/resource_management/projectManager/addResourceToTeam',{"rId": rId, "tId": tId})
					.then(
							function(response){
								alert("3")
	                            return response.data;
	                        }, 
	                        function(errResponse){
	                            console.error('Error while assigning resource');
	                            return $q.reject(errResponse);
	                        }
					
					);
			
		}
	};
}]);