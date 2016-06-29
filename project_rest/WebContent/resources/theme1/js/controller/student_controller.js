/**
 * controller
 */

'use strict';

App.controller('StudentController', ['$scope', 'StudentService', function($scope, StudentService) {
	
	var self = this;
    self.student={id:null,name:''};
    self.students=[];
    
    self.fetchAllStudents = function(){
    	StudentService.fetchAllStudents()
            .then(
	                 function(d) {
	                      self.students = d;
	                 },
	                  function(errResponse){
	                      console.error('Error while fetching students');
	                 }
                 );
    };
	
    self.fetchStudent = function(id){
    	StudentService.fetchStudent(id)
    		.then(
    				function(d){
    					
    					self.student = d;
    				},
    				function(errResponse){
    					console.error('No student find by this id');
    				}
    				
    		
    		);
    };
    
    
    self.createStudent = function(student){
    	alert("1")
    	StudentService.createStudent(student)
    		.then(
    				alert("4"),
    				self.fetchAllStudents,
    				function(errResponse){
    					console.error('Error while creating student.');
    				}
    		);
    };
    
    
    self.updateStudent = function(student){
        StudentService.updateStudent(student)
                .then(
                        self.fetchAllStudent, 
                        function(errResponse){
                             console.error('Error while updating student.');
                        } 
            );
    };

   self.deleteStudent = function(id){
	   	alert("delete")
        StudentService.deleteStudent(id)
                .then(
                        self.fetchAllStudents, 
                        function(errResponse){
                             console.error('Error while deleting student.');
                        } 
            );
    };
    
    self.fetchAllStudents();
    
    self.submit = function(){
    	if(self.student.id===null){
            console.log('Saving New student', self.student);    
            self.createStudent(self.student);
        }else{
            self.updateStudent(self.student);
            console.log('Student updated with id ', self.student.id);
        }
        self.reset();
    	
    };
    
    
    self.edit = function(id){
        console.log('id to be edited', id);
        for(var i = 0; i < self.students.length; i++){
            if(self.students[i].id == id) {
               self.student = angular.copy(self.students[i]);
               break;
            }
        }
    };
    
    self.remove = function(id){
    	alert("remove")
        console.log('id to be deleted', id);
        if(self.student.id == id) {//clean form if the student to be deleted is shown there.
           self.reset();
        }
        self.deleteStudent(id);
    };
    
    
    self.reset = function(){
        self.student={id:null,name:''};
        $scope.myForm.$setPristine(); //reset Form
    };
    
}]);