<div class="input-append" ng>
    <input style="width:358px; margin-left: 100px;" class="span2" type="text" ng-model="newTraining.name" required min="1" />
    <input style="width:358px; margin-left: 100px;" class="span2" type="text" ng-model="newTraining.cargaHoraria" required min="1" />
    <button class="btn btn-primary" ng-disabled="!newTraining.name" ng-click="addNewTraining(newTraining)">Add Training</button>
</div>

<h3 style="margin-left:100px;">Training List</h3>

<div class="alert alert-info" style="width:400px;margin-left:100px;" ng-show="trainings.length == 0">
    No trainings found
</div>

<table class="table table-bordered table-striped" style="width:450px; margin-left: 100px;" ng-show="trainings.length > 0">
    <thead>
        <tr>
            <th style="text-align: center; width: 25px;">Action</th>
            <th style="text-align: center;">Training Name</th>
            <th style="text-align: center;">Carga HR</th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="training in trainings">
            <td  style="width:70px;text-align:center;">
            	<button class="btn btn-mini btn-danger" ng-click="removeTraining(training)">Remove</button>
            </td>
            
            <td>
            	{{training.name}}
            </td>
            
            <td>
            	{{training.cargaHoraria}}
            </td>
        </tr>
    </tbody>
</table>

<button style="margin-left:100px;" class="btn btn-danger"  ng-show="trainings.length > 1" ng-click="removeAllTrainings()">Remove All Trainings</button>