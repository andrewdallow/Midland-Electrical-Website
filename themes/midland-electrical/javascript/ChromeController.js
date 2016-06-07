/*global angular*/
/**
 * HomePageController.js:
 * 
 * Provides various functionality for the home page of the website.
 */
(function () {
    'use strict';
    angular.module('MidlandElectricalApp').controller('ChromeController', [
        '$scope',
        function ($scope) {
            
            //Set the current year for copyright information.
            $scope.copywriteYear = new Date().getFullYear();
            
            /**
             * Formates a given phone number in the form of (XX) XXX-XXX
             * 
             * @param {String} phone The phone number to be formated
             * @returns {String} the formated phone number.
             */
            $scope.phoneFormat = function (phone) {
                phone = phone.toString();
                return "(0" + phone.substring(0,1) + ") " + phone.substring(1,4) 
                    + " " + phone.substring(4,8);             
            }
            
            /**
             * Formates a given mobile number in the form of (XXX) XXX-XXXX
             * 
             * @param {String} mobile The mobile number to be formated
             * @returns {String} the formated mobile number.
             */
            $scope.mobileFormat = function (mobile) {
                mobile = "0" + mobile.toString();
                return "" + mobile.substring(0,3) + " " + mobile.substring(3,6) 
                    + " " + mobile.substring(6,10);             
            }
            
            
            
        }]);
}());