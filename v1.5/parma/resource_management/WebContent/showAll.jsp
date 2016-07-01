<div class="panel panel-info">
						<div class="panel-heading" style="text-align: center;"><span class="lead" >Project Details </span></div>
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
			                        <tr ><!-- ng-repeat="p in pctrl.model" -->>
			                            <td><span ng-bind="pctrl.model.projectId"></span></td>
			                            <td><span ng-bind="pctrl.model.projectName"></span></td>
			                       	    <td><span ng-bind="pctrl.model.teamId"></span></td>
			                       	    <td><span ng-bind="pctrl.model.teamName"></span></td>
			                       	    <td><span ng-bind="pctrl.model.teamStatus"></span></td>
			                       	    <td><span ng-bind="pctrl.model.startDate"></span></td>
			                            <td><span ng-bind="pctrl.model.endDate"></span></td>
			                            <td>
			                            	<tr ng-repeat="r in pctrl.model.resourceList">
			                            		<td><span ng-bind="r"></span></td>
			                            	</tr>
			                            </td>
			                        </tr>
			                    </tbody>
							</table>
						</div>
					</div>
					
			</div>
		
		
