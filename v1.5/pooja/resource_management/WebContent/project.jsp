<div class="panel panel-info">
						<div class="panel-heading" style="text-align: center;"><span class="lead" >List of Projects</span></div>
						<div class="tablecontainer">
						
						<br>
						<div class="col-md-4 col-md-offset-4">
						   <input type="text" ng-model="ctrl.search.field" name="search" class="form-control input-sm" placeholder="Search Resources"/>
						</div>
						<br>
							<table class="table table-hover">
								<thead>
			                       <tr>
			                           <th>Project ID.</th>
			                           <th>Project Name</th>
			                           <th>Team Name</th>
			                           <th>Team Status</th>
			                           <th>Start Date</th>
			                           <th>End Date</th>
			                           
			                           <th width="10%"></th>
			                       </tr>
			                    </thead>
			                    <tbody>
			                        <tr ng-repeat="r in ctrl.resources | filter:ctrl.search.field">
			                            <td><span ng-bind="r.resourceId"></span></td>
			                            <td><span ng-bind="r.resourceName"></span></td>
			                            <td><span ng-bind="r.resourceStatus"></span></td>
			                            <td>
			                            <table class="table table-hover">
				                            <thead>
				                         
							                <div ng-hide="r.roles">
							                <h5>NA</h5>
							                </div>
				                    		</thead>
				                    		<tbody>
					                            	<tr ng-repeat="role in r.roles">
					                            		 <td><span ng-bind="role.roleName"></span></td>
					                            		 <td><span ng-bind="role.roleType"></span></td>
					                            		 <td><span ng-bind="role.startDate"></span></td>
					                            		 <td><span ng-bind="role.endDate"></span></td>
					                            	</tr>
			                            	<tbody>
			                            </table>
			                            </td>
			                            <td style="position: absolute; right: 5px">
				                          <button type="button" ng-click="ctrl.edit(r.resourceId)" class="btn btn-success custom-width">Edit</button> 
				                          <button type="button" ng-click="ctrl.remove(r.resourceId)" class="btn btn-danger custom-width">Remove</button>
			                            </td>
			                        </tr>
			                    </tbody>
							</table>
						</div>
					</div>