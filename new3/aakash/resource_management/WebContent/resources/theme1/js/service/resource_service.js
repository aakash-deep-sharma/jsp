/**
 * resource service
 */

'use strict';

App.factory('ResourceService',['$http','$q',function($http,$q){
	
	return {
        
		fetchAllResources: function()
		{
            return $http.get('http://localhost:8008/project_rest/rest/resources')
                    .then(
                            function(response){
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while fetching resources list');
                                return $q.reject(errResponse);
                            }
                    );
        },
	
	
	
		fetchResource: function(id)
		{
			
			return $http.get('http://localhost:8008/project_rest/rest/resource/{id}')
					.then(
							function(response){
								return response.data;
							},
							function(errResponse){
								console.error('No resource by this id is present');
								return $q.reject(errResponse);
							}
					);
		},
		
		createResource: function(resource)
		{
			alert("2")
			return $http.put('http://localhost:8008/project_rest/rest/create',resource)
					.then(
							function(response){
								alert("3")
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while creating resource');
                                return $q.reject(errResponse);
                            }
					
					);
		},
		
		updateResource: function(resource)
		{
			alert("update")
            return $http.post('http://localhost:8008/project_rest/rest/update',resource)
                    .then(
                            function(response){
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while updating resource');
                                return $q.reject(errResponse);
                            }
                    );
	    },
	    
	    deleteResource: function(id){
            return $http.get('http://localhost:8008/project_rest/rest/delete/{id}')
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
	    
	    
		
	};
}]);