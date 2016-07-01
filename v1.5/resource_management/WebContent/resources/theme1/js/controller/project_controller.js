/**
 * controller
 */

'use strict';

App.controller('ProjectController', ['$scope','$location', 'ProjectService','ResourceService', function($scope, $location,ProjectService,ResourceService) {
	
	var self = this;
    self.pId={projectId:null};
    self.tId={teamId:null};
    self.team={teamName:'',teamStatus:'',startDate:'',endDate:''}
    self.project={projectName:''};
    self.rId={resourceId:null};
    self.resources=[];
 
    
    self.createProject= function(project){
    	alert("1")
    	ProjectService.createProject(project)
    		.then(
    				function(d){
    						self.pId = d;
    						self.createTeam(self.team)
    				},
    					function(errResponse){
    					console.error('Error while creating resource.');
    				}
    		);
    };
    self.createTeam = function(team){
    	alert("1")
    	ProjectService.createTeam(team)
    		.then(
    				function(d){
    					self.tId = d;
						},
    					function(errResponse){
    					console.error('Error while creating team.');
    				}
    		);
    };
    
   self.assignResource = function(rId){
	   
	   ProjectService.assignResource(rId,this.tId)
		.then(
				function(d){
					self.tId = d;
					self.fetchAllResources;
					},
					function(errResponse){
					console.error('Error while assign resources.');
				}
		);
	   
	   
   };
   
   self.fetchAllResources = function(){
   	alert('fetch')
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
   
   self.fetchAllResources();
   
    self.submit = function(){
            self.createProject(self.project);
            $location.path("/rsalloc")
    };
    
   
    
    self.reset = function(){
    	self.team={teamName:'',teamStatus:'',startDate:'',endDate:''}
        self.project={projectName:''};
        $scope.myForm.$setPristine(); //reset Form
    };
    
}]);