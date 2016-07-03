<div class="panel panel-info">
						<div class="panel-heading" style="text-align: center;"><span class="lead" >Project Details </span></div>
						<div class="tablecontainer">
						
						<br>
						<!-- 
						<div class="form-group input-group col-md-4 col-md-offset-4">
						<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
						   <input type="text" ng-model="search.field" name="search" class="form-control input-sm" placeholder="Search Resources"/>
						   
						</div> -->
						<br>
							<table class="table table-hover">
								<thead>
			                       <tr>
			                           <th width="11%">Project ID.</th>
			                           <th width="13%">Project Name</th>
			                           <th width="11%">Team ID</th>
			                           <th width="13%">Team Name</th>
			                           <th width="13%">Team Status</th>
			                           <th width="15%">Start Date</th>
			                           <th width="15%">End Date</th>
			                           <th width="10%"></th>
			                       </tr>
			                    </thead>
			                    <tbody>
			                        <tr ><!-- ng-repeat="p in pctrl.model" -->
			                            <td><span ng-bind="pctrl.model.projectId"></span></td>
			                            <td><span ng-bind="pctrl.model.projectName"></span></td>
			                       	    <td><span ng-bind="pctrl.model.teamId"></span></td>
			                       	    <td><span ng-bind="pctrl.model.teamName"></span></td>
			                       	    <td><span ng-bind="pctrl.model.teamStatus"></span></td>
			                       	    <td><span ng-bind="pctrl.model.startDate"></span></td>
			                            <td><span ng-bind="pctrl.model.endDate"></span></td>
			                            <td>
			                            	<tr ng-repeat="resource in pctrl.model.resourceList">
			                            		<td><span ng-bind="resource.resourceId"></span></td>
			                            		<td><span ng-bind="resource.resourceName"></span></td>
			                            		<td>
			                            			  <a ng-href="{{'#object-' + $index}}" class="btn btn-info" data-toggle="collapse">Add Role</a>
												     <div id="{{ 'object-' + $index }}" class="collapse">
												     	
												     		<div class="formcontainer">
								 
																	 <form ng-submit="pctrl.addRoleButton(resource.resourceId)" name="myForm" class="form-horizontal">
																	 	<input type="hidden" ng-model="ctrl.resource.resourceId" />
																	 	
																	 	<div class="row">
																	 		<div class="form-group col-md-12">
																	 			
																	 			<label class="col-md-2 col-md-offset-3 control-lable"  for="rname">Role Name</label>
																	 			<div class="col-md-6">
																	 			<input type="text" ng-model="pctrl.role.roleName" name="rolename" class="form-control input-sm" placeholder="Enter role name" required ng-minlength="3"/>
																					<div class="has-error" ng-show="myForm.$dirty">
																					  <span ng-show="myForm.rname.$error.required">This is a required field</span>
												                                      <span ng-show="myForm.rname.$error.minlength">Minimum length required is 3</span>
												                                      <span ng-show="myForm.rname.$invalid">This field is invalid </span>
																					</div>			 			
																	 			</div>
																	 			
																	 			<br>
																	 			<br>
																	 			<label class="col-md-2 col-md-offset-3 control-lable" for="roletype">Role Type</label>
																	 			<div class="col-md-6">
																	 			<input type="text" ng-model="ctrl.role.roleType" name="roletype" class="form-control input-sm" placeholder="Enter role type" required ng-minlength="3"/>
																					<div class="has-error" ng-show="myForm.$dirty">
																					  <span ng-show="myForm.rstatus.$error.required">This is a required field</span>
												                                      <span ng-show="myForm.rstatus.$error.minlength">Minimum length required is 3</span>
												                                      <span ng-show="myForm.rstatus.$invalid">This field is invalid </span>
																					</div>			 			
																	 			</div>
																	 			
																	 			<br>
																	 			<br>
																	 			<label class="col-md-2 col-md-offset-3 control-lable"  for="startdate">Start Date</label>
																	 			<div class="col-md-6">
																	 			<input type="date" ng-model="pctrl.role.startDate" name="startdate" class="form-control input-sm" placeholder="Enter start date" required ng-minlength="3"/>
																					<div class="has-error" ng-show="myForm.$dirty">
																					  <span ng-show="myForm.rname.$error.required">This is a required field</span>
												                                      <span ng-show="myForm.rname.$error.minlength">Minimum length required is 3</span>
												                                      <span ng-show="myForm.rname.$invalid">This field is invalid </span>
																					</div>			 			
																	 			</div>
																	 			
																	 			<br>
																	 			<br>
																	 			<label class="col-md-2 col-md-offset-3 control-lable"  for="enddate">Start Date</label>
																	 			<div class="col-md-6">
																	 			<input type="date" ng-model="pctrl.role.endDate" name="enddate" class="form-control input-sm" placeholder="Enter end date" required ng-minlength="3"/>
																					<div class="has-error" ng-show="myForm.$dirty">
																					  <span ng-show="myForm.rname.$error.required">This is a required field</span>
												                                      <span ng-show="myForm.rname.$error.minlength">Minimum length required is 3</span>
												                                      <span ng-show="myForm.rname.$invalid">This field is invalid </span>
																					</div>			 			
																	 			</div>
																	 		</div>
																	 	</div>
																	 	
																	 	<div class="row">
																	 		 <div class="form-actions col-md-4 col-md-offset-5">
																	 		 	<input type="submit"  value="Assign Role" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
																	 		 	
												                          	</div>
												                      </div>
												                      <br>
												                      <br>
												                  </form>
												              </div>
												     	
					                          		 </div>
			                            		</td>
			                            	</tr>
			                         
			                    </tbody>
							</table>
						</div>
</div>
			
		
