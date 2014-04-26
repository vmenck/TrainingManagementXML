'use strict';

var App = angular.module('TrainingManagement', ['TrainingManagement.filters', 'TrainingManagement.services', 'TrainingManagement.directives', 'ngRoute']);

// Declare app level module which depends on filters, and services
App.config(['$routeProvider','$locationProvider', function ($routeProvider, $locationProvider) {
	
	$routeProvider.when('/TM/novaPagina', {
        templateUrl: 'TM/newPage'
        
        //controller: ControllerName
    });
    
    $routeProvider.otherwise({redirectTo: '/TM'});
	$locationProvider.html5Mode(true);
	
}]);