/*global angular*/
/**
 * contactFormController.js:
 * 
 * Provides various functionality for the contact form on the contact page.
 */
(function () {
    'use strict';
    angular.module('MidlandElectricalApp').controller('contactFormController', [
        '$scope', '$http',
        function ($scope,$http) { 
            $scope.success = false;
            $scope.error = false;
            $scope.showSpinner = false;
            $scope.disableSendButton = false;
            
            $scope.sendMessage = function( input ) {
                $scope.showSpinner = true;
                $scope.disableSendButton = true;
                $http({
                    method: 'POST',
                    url: './contact/submit',
                    data: input,
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
                })
                .then(function successCallback(response) {
                    $scope.showSpinner = false;
                    $scope.disableSendButton = false;
                    if ( response.data.success ) {
                        $scope.success = true;
                        $scope.error = false;
                        $scope.input = {};
                    }
                    else {
                        $scope.error = true;
                    }
                }, function errorCallback(response){
                    $scope.showSpinner = false;
                    $scope.disableSendButton = false;
                    $scope.error = true;
                });
            };
        }]);
}());