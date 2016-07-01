/**
 * team controller
 */

'use strict';

App.controller('TeamController', ['$scope', 'TeamService', function($scope,TeamService) {
	
	var self = this;
    self.team={teamId:null,teamName:'',teamStatus:'',startDate:'',endDate:''};
    self.teams=[];
    self.search={field:''}
    
    self.fetchAllTeams = function(){
    	alert('fetch')
    	TeamService.fetchAllTeams()
            .then(
	                 function(d) {
	                	
	                      self.teams = d;
	                 },
	                  function(errResponse){
	                      console.error('Error while fetching teams');
	                 }
                 );
    };
    
    self.fetchAllTeams();
    
    self.fetchTeam = function(id){
    	TeamService.fetchTeam(id)
    		.then(
    				function(d){
    					
    					self.team = d;
    				},
    				function(errResponse){
    					console.error('No team find by this id');
    				}
    				
    		
    		);
    };
    /*self.createTeam = function(team){
    	alert("1")
    	TeamService.createTeam(team)
    		.then(
    				self.fetchAllTeams,
    				function(errResponse){
    					console.error('Error while creating team.');
    				}
    		);
    };
    
    self.submit = function(){
    	if(self.team.teamId===null){
            console.log('Saving New team', self.team);    
            self.createTeam(self.team);
        }else{
            self.updateTeam(self.team);
            console.log('Team updated with id ', self.team.teamId);
        }
        self.reset();
    	
    };
    
    
    
    self.updateTeam = function(team){
    	TeamService.updateTeam(team)
                .then(
                        self.fetchAllTeams, 
                        function(errResponse){
                             console.error('Error while updating Team.');
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
    
    
   
    
    
  

   self.deleteResource = function(resourceId){
	   	alert("delete" +resourceId)
        ResourceService.deleteResource(resourceId)
                .then(
                        self.fetchAllResources, 
                        function(errResponse){
                             console.error('Error while deleting resource.');
                        } 
            );
    };
    
    self.fetchAllResources();
    
    
    
    
    self.edit = function(resourceId){
    	alert(resourceId)
        console.log('id to be edited', resourceId);
        for(var i = 0; i < self.resources.length; i++){
            if(self.resources[i].resourceId == resourceId) {
               self.resource = angular.copy(self.resources[i]);
               break;
            }
        }
    };
    
    self.remove = function(resourceId){
    	alert("remove"+resourceId)
        console.log('id to be deleted', resourceId);
        if(self.resource.resourceId == resourceId) {//clean form if the resource to be deleted is shown there.
           self.reset();
        }
        self.deleteResource(resourceId);
    };
    
    
    self.reset = function(){
        self.resource={resourceId:null,resourceName:'',resourceStatus:''};
        $scope.myForm.$setPristine(); //reset Form
    };
    */
}]);