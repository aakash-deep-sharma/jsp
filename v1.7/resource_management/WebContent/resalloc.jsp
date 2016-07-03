

<div class="panel panel-info">
						<div class="panel-heading" style="text-align: center;"><span class="lead" >List of Resources </span></div>
						<div class="tablecontainer">
						
						<br>
						
						<div class="form-group input-group col-md-4 col-md-offset-4">
						<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
						   <input type="text" ng-model="search.field" name="search" class="form-control input-sm" placeholder="Search Resources"/>
						   
						</div>
						<br>
							<table class="table table-hover">
								<thead>
			                       <tr>
			                           <th width="11%">Resource ID.</th>
			                           <th width="13%">Resource Name</th>
			                           <th width="15%">Resource Status</th>
			                           <th width="10%"></th>
			                       </tr>
			                    </thead>
			                    <tbody>
			                        <tr ng-repeat="r in ctrl.resources | filter:search.field">
			                            <td><span ng-bind="r.resourceId"></span></td>
			                            <td><span ng-bind="r.resourceName"></span></td>
			                            <td><span ng-bind="r.resourceStatus"></span></td>
			                            
			                            <td style="position: absolute; right: 5px">
				                          <button type="button" ng-click="ctrl.role(r.resourceId)" class="btn btn-success custom-width">Role</button> 
				                          <button type="button" ng-click="ctrl.assignResource(r.resourceId)" class="btn btn-danger custom-width">Assign</button>
			                            </td>
			                        </tr>
			                    </tbody>
							</table>
						</div>
					</div>


