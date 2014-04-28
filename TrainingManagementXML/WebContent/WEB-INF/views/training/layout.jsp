<div class="input-append">
    <input style="width:358px; margin-left: 100px;" class="span2" type="text" ng-model="trainingName" required min="1" />
    <button class="btn btn-primary" ng-disabled="!trainingName" ng-click="addNewTraining(trainingName)">Add Training</button>
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
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="training in trainings">
            <td  style="width:70px;text-align:center;"><button class="btn btn-mini btn-danger" ng-click="removeTraining(training)">Remove</button></td>
            <td>{{training}}</td>
        </tr>
    </tbody>
</table>
<button style="margin-left:100px;" class="btn btn-danger"  ng-show="cars.length > 1" ng-click="removeAllTrainings()">Remove All Trainings</button>