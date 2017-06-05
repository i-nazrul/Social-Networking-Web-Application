//'use strict';

//var app = angular.module('myApp', ['ngResource']);

app.factory('Users', ['$resource', function ($resource) {
        return $resource('http://localhost:8084/SocialNetworking/users/:userId', {userId: '@userId'},
                {
                    updateUsers: {method: 'PUT'}
                }
        );
    }]);

app.controller('UsersController', ['$scope', 'Users', function ($scope, Users) {
        var ob = this;
        ob.users = [];
        ob.user = new Users();
        
        ob.user.day = "Day";
        ob.user.month = "Month";
        ob.user.year = "Year";
        ob.user.sex = "Sex";
        $scope.varrr = "wow";   
        
        
        ob.fetchAllUsers = function () {
            ob.users = Users.query();
        };
        ob.fetchAllUsers();
        
        
        
        ob.addUsers = function () {
            console.log('Inside save');
            if ($scope.usersForm.$valid) {
                ob.user.$save(function (user) {
                    console.log(user);
                    ob.flag = 'created';
                    ob.reset();
//                    ob.fetchAllUsers();
                },
                        function (err) {
                            console.log(err.status);
                            ob.flag = 'failed';
                        }
                );
            }
        };
        ob.editUsers = function (userId) {
            console.log('Inside edit');
            ob.user = Users.get({userId: userId}, function () {
                ob.flag = 'edit';
            });
        };
        ob.updateUsersDetail = function () {
            console.log('Inside update');
            if ($scope.usersForm.$valid) {
                ob.user.$updateUsers(function (user) {
                    console.log(user);
                    ob.updatedId = user.userId;
                    ob.reset();
                    ob.flag = 'updated';
                    ob.fetchAllUsers();
                });
            }
        };
        ob.deleteUsers = function (userId) {
            console.log('Inside delete');
            ob.user = Users.delete({userId: userId}, function () {
                ob.reset();
                ob.flag = 'deleted';
                ob.fetchAllUsers();
            });
        };
        ob.reset = function () {
            ob.user = new Users();
            $scope.usersForm.$setPristine();
            ob.user.day = "Day";
            ob.user.month = "Month";
            ob.user.year = "Year";
            ob.user.sex = "Sex";
        };
        ob.cancelUpdate = function (userId) {
            ob.user = new Users();
            ob.flag = '';
            ob.fetchAllUsers();
        };
    }]);
   
