'use strict';

var TrainingController = function($scope, $http) 
{
    $scope.fetchTrainingsList = function() 
    {
        $http.get('TM/trainings/trainingList').success(function(trainingList){
            $scope.trainings = trainingList;
        });
    };

    $scope.addNewTraining = function(newTraining) 
    {
    	
    	$http({
            url: 'TM/trainings/addTraining/',
            method: "POST",
            data: newTraining}).success(function() {
            $scope.fetchTrainingsList();
        });
    	
        $scope.name = '';
    };

    $scope.removeTraining = function(training) 
    {
        $http.delete('TM/trainings/removeTraining/' + training).success(function() {
            $scope.fetchTrainingsList();
        });
    };

    $scope.removeAllTrainings = function() 
    {
        $http.delete('TM/trainings/removeAllTrainings').success(function() {
            $scope.fetchTrainingsList();
        });

    };

    $scope.fetchTrainingsList();
};