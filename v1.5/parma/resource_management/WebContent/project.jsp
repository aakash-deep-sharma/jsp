		<div class="panel panel-info">
			            <div class="panel-heading" style="text-align: center;"><span class="lead">Create Project And Team</span></div>
							<br>
							<br>
							<div class="formcontainer">
								 
								 <form ng-submit="pctrl.submit()" name="myForm" class="form-horizontal">
								 	<!-- <input type="hidden" ng-model="pctrl.resource.resourceId" /> -->
								 	
								 	<div class="row">
								 		<div class="form-group col-md-12">
								 			
								 			<label class="col-md-2 col-md-offset-3 control-lable"  for="pname">Project Name</label>
								 			<div class="col-md-6">
								 			<input type="text" ng-model="pctrl.project.projectName" name="pname" class="form-control input-sm" placeholder="Enter project name" required ng-minlength="3"/>
												<div class="has-error" ng-show="myForm.$dirty">
												  <span ng-show="myForm.rname.$error.required">This is a required field</span>
			                                      <span ng-show="myForm.rname.$error.minlength">Minimum length required is 3</span>
			                                      <span ng-show="myForm.rname.$invalid">This field is invalid </span>
												</div>			 			
								 			</div>
								 			<br>
								 			<br>
								 			<label class="col-md-2 col-md-offset-3 control-lable" for="tname">Team Name</label>
								 			<div class="col-md-6">
								 			<input type="text" ng-model="pctrl.team.teamName" name="tname" class="form-control input-sm" placeholder="Enter team name" required ng-minlength="3"/>
												<div class="has-error" ng-show="myForm.$dirty">
												  <span ng-show="myForm.rstatus.$error.required">This is a required field</span>
			                                      <span ng-show="myForm.rstatus.$error.minlength">Minimum length required is 3</span>
			                                      <span ng-show="myForm.rstatus.$invalid">This field is invalid </span>
												</div>			 			
								 			</div>
								 			<br>
								 			<br>
								 			<label class="col-md-2 col-md-offset-3 control-lable" for="tstatus">Team Status</label>
								 			<div class="col-md-6">
								 			<input type="text" ng-model="pctrl.team.teamStatus" name="tstatus" class="form-control input-sm" placeholder="Enter team status" required ng-minlength="3"/>
												<div class="has-error" ng-show="myForm.$dirty">
												  <span ng-show="myForm.rstatus.$error.required">This is a required field</span>
			                                      <span ng-show="myForm.rstatus.$error.minlength">Minimum length required is 3</span>
			                                      <span ng-show="myForm.rstatus.$invalid">This field is invalid </span>
												</div>			 			
								 			</div>
								 			<br>
								 			<br>
								 			<label class="col-md-2 col-md-offset-3 control-lable" for="tstartdate">Start Date</label>
								 			<div class="col-md-6">
								 			<input type="date" ng-model="pctrl.team.startDate" name="tstartdate" class="form-control input-sm" placeholder="Enter team start date" required ng-minlength="3"/>
												<div class="has-error" ng-show="myForm.$dirty">
												  <span ng-show="myForm.rstatus.$error.required">This is a required field</span>
			                                      <span ng-show="myForm.rstatus.$error.minlength">Minimum length required is 3</span>
			                                      <span ng-show="myForm.rstatus.$invalid">This field is invalid </span>
												</div>			 			
								 			</div>
								 			<br>
								 			<br>
								 			<label class="col-md-2 col-md-offset-3 control-lable" for="tenddate">End Date</label>
								 			<div class="col-md-6">
								 			<input type="date" ng-model="pctrl.team.endDate" name="tenddate" class="form-control input-sm" placeholder="Enter team end date" required ng-minlength="3"/>
												<div class="has-error" ng-show="myForm.$dirty">
												  <span ng-show="myForm.rstatus.$error.required">This is a required field</span>
			                                      <span ng-show="myForm.rstatus.$error.minlength">Minimum length required is 3</span>
			                                      <span ng-show="myForm.rstatus.$invalid">This field is invalid </span>
												</div>			 			
								 			</div>
								 		</div>
								 	</div>
								 	
								 	<div class="row">
								 		 <div class="form-actions col-md-4 col-md-offset-5">
								 		 	<input type="submit"  value="Create" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
								 		 	<button type="button" ng-click="pctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
			                          	</div>
			                      </div>
			                      <br>
			                      <br>
			                  </form>
			                  <div>
			                  	{{pctrl.team.teamName}}
			                  	{{pctrl.project.projectName}}
			                  </div>
			              </div>
					</div>