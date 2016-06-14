/*global angular*/
/**
 * TestimonialCarouselCtrl.js:
 * 
 * Controls the functionality of the tesimonials carousel
 */
(function () {
    'use strict';
    angular.module('MidlandElectricalApp').controller('TestimonialCarouselCtrl', [
        '$scope', '$http',
        function ($scope, $http) {

            $scope.myInterval = 5000;
            $scope.noWrapSlides = false;
            $scope.active = 0;
            $scope.showTestimonials = false;
            var slides = $scope.slides = [];
            var currIndex = 0;
            
            function addSlide(slide) {
                slides.push({
                    name: slide.CustomerName,
                    testimonial: slide.Testimonial,
                    id: currIndex++
                });
            } 

            function getTestimonials() {

                $http({
                    method: 'GET',
                    url: './home/testimonials'
                })
                    .then(function successCallback(response) {
                        angular.forEach(response.data, function(testimonial, index){
                            addSlide(testimonial);
                        })
                        if (slides.length > 0) {
                            $scope.showTestimonials = true;
                        }

                    }, function errorCallback(response) {
                        console.log(response);
                    
                    });
            };
            
            getTestimonials();

        }]);
}());