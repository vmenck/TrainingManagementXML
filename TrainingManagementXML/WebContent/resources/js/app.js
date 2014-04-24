'use strict';

var App = angular.module('TrainingManagement', ['TrainingManagement.filters', 'TrainingManagement.services', 'TrainingManagement.directives', 'ngRoute']);

// Declare app level module which depends on filters, and services
App.config(['$routeProvider', function ($routeProvider) {
   /*
	$routeProvider.when('/pageA', {
        templateUrl: 'dir/page',
        controller: ControllerName
    });

    $routeProvider.otherwise({redirectTo: '/pageX'});
    */
}]);
