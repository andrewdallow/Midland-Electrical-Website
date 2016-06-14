/*global angular */

/**
 * Midland Electrical Application.js
 * 
 * Initialses the Angularjs application and its modules used to control
 * the dynamic and reponsive behaviour of the Midland Electrical website.
 */
(function () {
    'use strict';
    angular.module('MidlandElectricalApp', [
        'ngAnimate',
        'ngTouch',
        'ui.bootstrap',
        'ui.bootstrap.tpls'
    ]);
}());


