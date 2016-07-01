/**
 * team service
 */

'use strict';

App.factory('TeamService',['$http','$q',function($http,$q){
	
	return {
        
		fetchAllTeams: function()
		{
			
            return $http.get('http://localhost:8085/resource_management/projectManager/listTeam')
                    .then(
                            function(response){
                            	
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while fetching team list');
                                return $q.reject(errResponse);
                            }
                    );
        },
        
        fetchTeam: function(id)
		{
			
			return $http.get('http://localhost:8085/resource_management/projectManager/getTeamById/'+id)
					.then(
							function(response){
								return response.data;
							},
							function(errResponse){
								console.error('No team by this id is present');
								return $q.reject(errResponse);
							}
					);
		}
        /*createTeam: function(team)
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

        
        updateTeam: function(team)
		{
			alert("update")
            return $http.post('http://localhost:8085/resource_management/admin/update',team)
                    .then(
                            function(team){
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while updating resource');
                                return $q.reject(errResponse);
                            }
                    );
	    }
      
	
		
		
		
		
	    
	    deleteResource: function(resourceId){
            return $http.delete('http://localhost:8085/resource_management/admin/delete/'+resourceId)
                    .then(
                            function(response){
                            	alert("service")
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while deleting resource');
                                return $q.reject(errResponse);
                            }
                    );
    }
	    
	    
		*/
	};
}]);