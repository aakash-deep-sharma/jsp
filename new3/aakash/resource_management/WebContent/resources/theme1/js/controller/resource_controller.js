/**
 * controller
 */

'use strict';

App.controller('ResourceController', ['$scope', 'ResourceService', function($scope, ResourceService) {
	
	var self = this;
    self.resource={id:null,name:''};
    self.resources=[];
    
    self.fetchAllResources = function(){
    	ResourceService.fetchAllResources()
            .then(
	                 function(d) {
	                      self.resources = d;
	                 },
	                  function(errResponse){
	                      console.error('Error while fetching resources');
	                 }
                 );
    };
	
    self.fetchResource = function(id){
    	ResourceService.fetchResource(id)
    		.then(
    				function(d){
    					
    					self.resource = d;
    				},
    				function(errResponse){
    					console.error('No resource find by this id');
    				}
    				
    		
    		);
    };
    
    
    self.createResource = function(resource){
    	alert("1")
    	ResourceService.createResource(resource)
    		.then(
    				alert("4"),
    				self.fetchAllResources,
    				function(errResponse){
    					console.error('Error while creating resource.');
    				}
    		);
    };
    
    
    self.updateResource = function(resource){
        ResourceService.updateResource(resource)
                .then(
                        self.fetchAllResource, 
                        function(errResponse){
                             console.error('Error while updating resource.');
                        } 
            );
    };

   self.deleteResource = function(id){
	   	alert("delete")
        ResourceService.deleteResource(id)
                .then(
                        self.fetchAllResources, 
                        function(errResponse){
                             console.error('Error while deleting resource.');
                        } 
            );
    };
    
    self.fetchAllResources();
    
    self.submit = function(){
    	if(self.resource.id===null){
            console.log('Saving New resource', self.resource);    
            self.createResource(self.resource);
        }else{
            self.updateResource(self.resource);
            console.log('Resource updated with id ', self.resource.id);
        }
        self.reset();
    	
    };
    
    
    self.edit = function(id){
        console.log('id to be edited', id);
        for(var i = 0; i < self.resources.length; i++){
            if(self.resources[i].id == id) {
               self.resource = angular.copy(self.resources[i]);
               break;
            }
        }
    };
    
    self.remove = function(id){
    	alert("remove")
        console.log('id to be deleted', id);
        if(self.resource.id == id) {//clean form if the resource to be deleted is shown there.
           self.reset();
        }
        self.deleteResource(id);
    };
    
    
    self.reset = function(){
        self.resource={id:null,name:''};
        $scope.myForm.$setPristine(); //reset Form
    };
    
}]);