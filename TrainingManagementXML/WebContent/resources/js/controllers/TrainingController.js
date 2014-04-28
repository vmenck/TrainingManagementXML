'use strict';

var TrainingController = function($scope, $http) {
    $scope.fetchTrainingsList = function() 
    {
        $http.get('TM/trainings/trainingList').success(function(trainingList){
            $scope.trainings = trainingList;
        });
    };

    $scope.addNewTraining = function(newTraining) 
    {
        $http.post('TM/trainings/addTraining/' + newTraining).success(function() {
            $scope.fetchTrainingsList();
        });
        $scope.TrainingName = '';
    };

    $scope.removeTraining = function(training) 
    {
        $http.delete('TM/trainings/removeTraining/' + training).success(function() {
            $scope.fetchTrainingsList();
        });
    };

    $scope.removeAllCars = function() 
    {
        $http.delete('TM/trainings/removeAllTrainings').success(function() {
            $scope.fetchTrainingsList();
        });

    };

    $scope.fetchTrainingsList();
};