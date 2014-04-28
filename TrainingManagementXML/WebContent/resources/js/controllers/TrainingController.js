'use strict';

var TrainingController = function($scope, $http) {
    $scope.fetchTrainingsList = function() 
    {
        $http.get('trainings/traininglist.json').success(function(trainingList){
            $scope.trainings = trainingList;
        });
    };

    $scope.addNewTraining = function(newTraining) 
    {
        $http.post('trainings/addaddTraining/' + newTraining).success(function() {
            $scope.fetchTrainingsList();
        });
        $scope.TrainingName = '';
    };

    $scope.removeTraining = function(training) 
    {
        $http.delete('trainings/removeaddTraining/' + training).success(function() {
            $scope.fetchTrainingsList();
        });
    };

    $scope.removeAllCars = function() 
    {
        $http.delete('trainings/removeAllTrainings').success(function() {
            $scope.fetchTrainingsList();
        });

    };

    $scope.fetchTrainingsList();
};