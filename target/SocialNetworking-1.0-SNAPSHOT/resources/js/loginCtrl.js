
app.factory('Login', ['$resource', function ($resource) {
        return $resource('http://localhost:8084/SocialNetworking/login/:userId', {userId: '@userId'},
                {
                    updateUsers: {method: 'PUT'}
                }
        );
    }]);

app.controller('LoginController', ['$scope', 'Login', '$window', function ($scope, Users, $window) {
        var lb = this;
//        ob.users = [];
        lb.user = new Users();
        
//        ob.user.day = "Da";
//        ob.user.month = "Mon";
//        ob.user.year = "Year";
//        ob.user.sex = "Sex";
//        ob.user.firstName = "Sex";
//        ob.user.lastName = "Sex";

//        ob.fetchAllUsers = function () {
//            ob.users = Users.query();
//        };
//        ob.fetchAllUsers();
        
        
        
        lb.loginUsers = function () {
            console.log('Inside save');
            if ($scope.loginForm.$valid) {
                lb.user.$save(function (user) {
                    console.log(user.lastName);
                    lb.flag = 'created';
//                    ob.reset();
//                    ob.fetchAllUsers();
//                    $scope.myname = user;
//                    lb.editUsers();
                    $window.location.replace("main");
                },
                        function (err) {
                            console.log(err.status);
                            lb.flag = 'failed';
                        }
                );
            }
        };
        lb.editUsers = function () {
            console.log('Inside edit');
            ob.user = Users.get(function () {
                ob.flag = 'edit';
                console.log(user.lastName);
            });
        };
//        ob.updateUsersDetail = function () {
//            console.log('Inside update');
//            if ($scope.usersForm.$valid) {
//                ob.user.$updateUsers(function (user) {
//                    console.log(user);
//                    ob.updatedId = user.userId;
//                    ob.reset();
//                    ob.flag = 'updated';
//                    ob.fetchAllUsers();
//                });
//            }
//        };
//        ob.deleteUsers = function (userId) {
//            console.log('Inside delete');
//            ob.user = Users.delete({userId: userId}, function () {
//                ob.reset();
//                ob.flag = 'deleted';
//                ob.fetchAllUsers();
//            });
//        };
//        ob.reset = function () {
//            ob.user = new Users();
//            $scope.usersForm.$setPristine();
//            ob.user.day = "Day";
//            ob.user.month = "Month";
//            ob.user.year = "Year";
//            ob.user.sex = "Sex";
//        };
//        ob.cancelUpdate = function (userId) {
//            ob.user = new Users();
//            ob.flag = '';
//            ob.fetchAllUsers();
//        };
    }]);
   
