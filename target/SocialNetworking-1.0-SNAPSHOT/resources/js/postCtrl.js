
app.factory('Post', ['$resource', function ($resource) {
        return $resource('http://localhost:8084/SocialNetworking/posts/:postId', {postId: '@postId'},
                {
                    updateUsers: {method: 'PUT'}
                }
        );
    }]);

app.controller('PostController', ['$scope', 'Post', function ($scope, Post, Users) {
        var pb = this;
        pb.postss = [];
        pb.post = new Post();
            

//        ob.fetchAllPosts = function () {
//            ob.postss = Post.query();
//        };
//        ob.fetchAllPosts();
        
        
        
        pb.addPost = function () {
            console.log('Inside save');
            if ($scope.postForm.$valid) {
                pb.post.$save(function (post) {
                    console.log(post);
                    pb.flag = 'created';
                    pb.reset();
//                    ob.getPostsById(1);
//                    ob.fetchAllPosts();
                },
                        function (err) {
                            console.log(err.status);
                            pb.flag = 'failed';
                        }
                );
            }
        };
//        ob.getPostsById(1);
        pb.getPostsById = function (postId) {
            console.log('Inside edit');
            pb.post = Post.get({postId: postId}, function () {
                pb.flag = 'edit';
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
        pb.reset = function () {
            pb.post = new Post();
            $scope.postForm.$setPristine();
            
        };
//        ob.cancelUpdate = function (userId) {
//            ob.user = new Users();
//            ob.flag = '';
//            ob.fetchAllUsers();
//        };
    }]);
   
