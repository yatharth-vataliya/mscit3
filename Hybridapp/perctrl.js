var app = angular.module('myApp', []);
app.controller('personCtrl', function($scope) {
    $scope.firstName = "CKK";
    $scope.lastName = " God is great";
    $scope.fullName = function() {
        return $scope.firstName + " " + $scope.lastName;
    };
});