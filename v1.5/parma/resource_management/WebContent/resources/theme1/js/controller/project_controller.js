/**
 * controller
 */

'use strict';

App.controller('ProjectController', ['$scope','$location', 'ProjectService', function($scope, $location,ProjectService) {
	
	var self = this;
    self.pId={projectId:null};
    self.tId={teamId:null};
    self.team={teamName:'',teamStatus:'',startDate:'',endDate:''}
    self.project={projectName:''};
    self.model={projectName:'',teamId:'',teamName:'',teamStatus:'',startDate:'',endDate:'',resourceList:[]};
    
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
    
   
    self.fetchProject = function(id){
    	ProjectService.fetchProject(id)
    		.then(
    				function(d){
    					
    					self.model = d;
    				},
    				function(errResponse){
    					console.error('No project find by this id');
    				}
    				
    		
    		);
    };
    
    self.submit = function(){
            self.createProject(self.project);
            $location.path("/teams")
    };
    
   
    
    self.reset = function(){
    	self.team={teamName:'',teamStatus:'',startDate:'',endDate:''}
        self.project={projectName:''};
        $scope.myForm.$setPristine(); //reset Form
    };
    
}]);