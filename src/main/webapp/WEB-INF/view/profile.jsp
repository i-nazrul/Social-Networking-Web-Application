
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png">
    <title>Day-Day</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap.3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/font-awesome.4.6.1/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/timeline.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/cover.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/forms.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/buttons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/searchBar.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/mysearchbar.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap.3.3.6/js/bootstrap.min.js"></script>
        
    <!--<script src="assets/js/custom.js"></script>-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body class="animated fadeIn">



    <!-- Begin page content -->
    <div class="row page-content">
    <div class="col-md-8 col-md-offset-2">
      <div class="row">
        <div class="col-md-12">
          <div class="cover profile">
            <div class="wrapper">
              <div class="image">
                <img src="${pageContext.request.contextPath}/resources/img/Cover/profile-cover.jpg" class="show-in-modal" alt="people">
              </div>
              <ul class="friends">
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-6.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-3.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-9.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-9.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-4.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-1.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li>
                  <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-4.jpg" alt="people" class="img-responsive">
                  </a>
                </li>
                <li><a href="#" class="group"><i class="fa fa-group"></i></a></li>
              </ul>
            </div>
            <div class="cover-info">
              <div class="avatar">
                <img src="${pageContext.request.contextPath}/resources/img/ProfilePhotoAlbum/${sessionScope.ppa.fileLink}" alt="people">
              </div>
              <div class="name"><a href="#">${sessionScope.u.firstName} ${sessionScope.u.lastName}</a></div>
              <ul class="cover-nav">
                <li class="active"><a href="profile"><i class="fa fa-fw fa-bars"></i> Timeline</a></li>
                <li><a href="about"><i class="fa fa-fw fa-user"></i> About</a></li>
                <li><a href="friends"><i class="fa fa-fw fa-users"></i> Friends</a></li>
                <li><a href="photos1"><i class="fa fa-fw fa-image"></i> Photos</a></li>
              </ul>
            </div>
          </div>
        </div>

      </div>
      <div class="row">

        <div class="col-md-5">
          <div class="widget">
            <div class="widget-header">
              <h3 class="widget-caption">About</h3>
            </div>
            <div class="widget-body bordered-top bordered-sky">
              <ul class="list-unstyled profile-about margin-none">
                <li class="padding-v-5">
                  <div class="row">
                    <div class="col-sm-4"><span class="text-muted">Date of Birth</span></div>
                    <div class="col-sm-8">${sessionScope.u.day} ${sessionScope.u.month} ${sessionScope.u.year}</div>
                  </div>
                </li>
                <li class="padding-v-5">
                  <div class="row">
                    <div class="col-sm-4"><span class="text-muted">Job</span></div>
                    <div class="col-sm-8">Ninja developer</div>
                  </div>
                </li>
                <li class="padding-v-5">
                  <div class="row">
                    <div class="col-sm-4"><span class="text-muted">Gender</span></div>
                    <div class="col-sm-8">${sessionScope.u.sex}</div>
                  </div>
                </li>
                <li class="padding-v-5">
                  <div class="row">
                    <div class="col-sm-4"><span class="text-muted">Lives in</span></div>
                    <div class="col-sm-8">Miami, FL, USA</div>
                  </div>
                </li>
                <li class="padding-v-5">
                  <div class="row">
                    <div class="col-sm-4"><span class="text-muted">Credits</span></div>
                    <div class="col-sm-8">249</div>
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <div class="widget widget-friends">

            <div class="widget-header">
              <h3 class="widget-caption">Friends</h3>
            </div>
            <div class="widget-body bordered-top  bordered-sky">
              <div class="row">
                <div class="col-md-12">
                  <ul class="img-grid" style="margin: 0 auto;">
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-6.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-3.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-9.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-9.jpg" alt="image">
                      </a>
                    </li>
                    <li class="clearfix">
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-4.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-1.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-4.jpg" alt="image">
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-6.jpg" alt="image">
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="widget">
            <div class="widget-header">
              <h3 class="widget-caption">Groups</h3>
            </div>
            <div class="widget-body bordered-top bordered-sky">
              <div class="card">
                <div class="content">
                  <ul class="list-unstyled team-members">
                    <li>
                      <div class="row">
                          <div class="col-xs-3">
                              <div class="avatar">
                                  <img src="${pageContext.request.contextPath}/resources/img/Likes/likes-1.png" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                              </div>
                          </div>
                          <div class="col-xs-6">
                             Github
                          </div>

                          <div class="col-xs-3 text-right">
                              <btn class="btn btn-sm btn-azure btn-icon"><i class="fa fa-user"></i></btn>
                          </div>
                      </div>
                    </li>
                    <li>
                      <div class="row">
                          <div class="col-xs-3">
                              <div class="avatar">
                                  <img src="${pageContext.request.contextPath}/resources/img/Likes/likes-3.png" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                              </div>
                          </div>
                          <div class="col-xs-6">
                              Css snippets
                          </div>

                          <div class="col-xs-3 text-right">
                              <btn class="btn btn-sm btn-azure btn-icon"><i class="fa fa-user"></i></btn>
                          </div>
                      </div>
                    </li>
                    <li>
                      <div class="row">
                          <div class="col-xs-3">
                              <div class="avatar">
                                  <img src="${pageContext.request.contextPath}/resources/img/Likes/likes-2.png" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                              </div>
                          </div>
                          <div class="col-xs-6">
                              Html Action
                          </div>

                          <div class="col-xs-3 text-right">
                              <btn class="btn btn-sm btn-azure btn-icon"><i class="fa fa-user"></i></btn>
                          </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>






        <!--============= timeline posts-->
        <div class="col-md-7">
          <div class="row">
            <!-- left posts-->
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12">
                <!-- post state form -->
                  <div class="box profile-info n-border-top">
                    <form name="postForm" method="POST" ng-controller="PostController as postCtrl">
                        <textarea class="form-control input-lg p-text-area" rows="2" ng-model="postCtrl.post.postContext" placeholder="Whats in your mind today?"></textarea>
                    
                    <div class="box-footer box-form">
                        <button type="button" class="btn btn-azure pull-right" ng-click="postCtrl.addPost()">Post</button>
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-map-marker"></i></a></li>
                            <li><a href="#"><i class="fa fa-camera"></i></a></li>
                            <li><a href="#"><i class=" fa fa-film"></i></a></li>
                            <li><a href="#"><i class="fa fa-microphone"></i></a></li>
                        </ul>
                    </div>
                   </form>
                  </div><!-- end post state form -->
<!--            <table>
                <tr><th>ID </th> <th>First Name</th> <th>Last Name</th> <th>Email</th> <th>Password</th> <th>Date of Birth</th> <th>Sex</th> <th>Status</th></tr>
                <tr ng-repeat="row in userCtrl.users">
                    <td><span ng-bind="row.userId"></span></td>
                    <td><span ng-bind="row.firstName"></span></td>
                    <td><span ng-bind="row.lastName"></span></td>
                    <td><span ng-bind="row.email"></span></td>
                    <td><span ng-bind="row.password"></span></td>
                    <td><span ng-bind="row.dob"></span></td>
                    <td><span ng-bind="row.sex"></span></td>
                    <td><span ng-bind="row.status"></span></td>
                    <td>
                        <input type="button" ng-click="userCtrl.deleteUsers(row.userId)" value="Delete"/>
                        <input type="button" ng-click="userCtrl.editUsers(row.userId)" value="Edit"/>
                        <span ng-if="userCtrl.flag === 'updated' && row.userId === userCtrl.updatedId" class="msg-success">Users successfully updated.</span> </td> 
                </tr>	
            </table>-->
                  <!--   posts -->
                  <div class="box box-widget">
                    <div class="box-header with-border">
                      <div class="user-block">
                        <img class="img-circle" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <span class="username"><a href="#">John Breakgrow jr.</a></span>
                        <span class="description">Shared publicly - 7:30 PM Today</span>
                      </div>
                    </div>

                    <div class="box-body" style="display: block;">
                      <img class="img-responsive show-in-modal" src="${pageContext.request.contextPath}/resources/img/Post/young-couple-in-love.jpg" alt="Photo">
                      <p>I took this photo this morning. What do you guys think?</p>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
                      <span class="pull-right text-muted">127 likes - 3 comments</span>
                    </div>
                    <div class="box-footer box-comments" style="display: block;">
                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Maria Gonzales
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>

                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Luna Stark
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>
                    </div>
                    <div class="box-footer" style="display: block;">
                      <form action="#" method="post">
                        <img class="img-responsive img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="Alt Text">
                        <div class="img-push">
                          <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                        </div>
                      </form>
                    </div>
                  </div><!--  end posts-->


                  <!-- post -->
                  <div class="box box-widget">
                    <div class="box-header with-border">
                      <div class="user-block">
                        <img class="img-circle" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <span class="username"><a href="#">Jonathan Burke Jr.</a></span>
                        <span class="description">Shared publicly - 7:30 PM Today</span>
                      </div>
                    </div>
                    <div class="box-body">
                      <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind
                      texts. Separated they live in Bookmarksgrove right at</p>

                      <p>the coast of the Semantics, a large language ocean.
                      A small river named Duden flows by their place and supplies
                      it with the necessary regelialia. It is a paradisematic
                      country, in which roasted parts of sentences fly into
                      your mouth.</p>

                      <div class="attachment-block clearfix">
                        <img class="attachment-img show-in-modal" src="${pageContext.request.contextPath}/resources/img/Photos/2.jpg" alt="Attachment Image">
                        <div class="attachment-pushed">
                        <h4 class="attachment-heading"><a href="#">Lorem ipsum text generator</a></h4>
                        <div class="attachment-text">
                        Description about the attachment can be placed here.
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry... <a href="#">more</a>
                        </div>
                        </div>
                      </div>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
                      <span class="pull-right text-muted">45 likes - 2 comments</span>
                    </div>
                    <div class="box-footer box-comments">
                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-5.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Maria Gonzales
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>
                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-6.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Nora Havisham
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          The point of using Lorem Ipsum is that it has a more-or-less
                          normal distribution of letters, as opposed to using
                          'Content here, content here', making it look like readable English.
                        </div>
                      </div>
                    </div>
                    <div class="box-footer">
                      <form action="#" method="post">
                        <img class="img-responsive img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="Alt Text">
                        <div class="img-push">
                          <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                        </div>
                      </form>
                    </div>
                  </div><!-- end post -->

                  <!--  posts -->
                  <div class="box box-widget">
                    <div class="box-header with-border">
                      <div class="user-block">
                        <img class="img-circle" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <span class="username"><a href="#">John Breakgrow jr.</a></span>
                        <span class="description">Shared publicly - 7:30 PM Today</span>
                      </div>
                    </div>

                    <div class="box-body" style="display: block;">
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac iaculis ligula, eget efficitur nisi. In vel rutrum orci. Etiam ut orci volutpat, maximus quam vel, euismod orci. Nunc in urna non lectus malesuada aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam dignissim mi ac metus consequat, a pharetra neque molestie. Maecenas condimentum lorem quis vulputate volutpat. Etiam sapien diam
                      </p>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
                      <span class="pull-right text-muted">127 likes - 3 comments</span>
                    </div>
                    <div class="box-footer box-comments" style="display: block;">
                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Maria Gonzales
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>

                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Luna Stark
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>
                    </div>
                    <div class="box-footer" style="display: block;">
                      <form action="#" method="post">
                        <img class="img-responsive img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="Alt Text">
                        <div class="img-push">
                          <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                        </div>
                      </form>
                    </div>
                  </div><!--  end posts -->

                  <!--   posts -->
                  <div class="box box-widget">
                    <div class="box-header with-border">
                      <div class="user-block">
                        <img class="img-circle" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <span class="username"><a href="#">John Breakgrow jr.</a></span>
                        <span class="description">Shared publicly - 7:30 PM Today</span>
                      </div>
                    </div>

                    <div class="box-body" style="display: block;">
                      <img class="img-responsive pad show-in-modal" src="${pageContext.request.contextPath}/resources/img/Photos/3.jpg" alt="Photo">
                      <p>I took this photo this morning. What do you guys think?</p>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Share</button>
                      <button type="button" class="btn btn-default btn-xs"><i class="fa fa-thumbs-o-up"></i> Like</button>
                      <span class="pull-right text-muted">127 likes - 3 comments</span>
                    </div>
                    <div class="box-footer box-comments" style="display: block;">
                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Maria Gonzales
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>

                      <div class="box-comment">
                        <img class="img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="User Image">
                        <div class="comment-text">
                          <span class="username">
                          Luna Stark
                          <span class="text-muted pull-right">8:03 PM Today</span>
                          </span>
                          It is a long established fact that a reader will be distracted
                          by the readable content of a page when looking at its layout.
                        </div>
                      </div>
                    </div>
                    <div class="box-footer" style="display: block;">
                      <form action="#" method="post">
                        <img class="img-responsive img-circle img-sm" src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="Alt Text">
                        <div class="img-push">
                          <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                        </div>
                      </form>
                    </div>
                  </div><!--  end posts -->
                </div>
              </div>
            </div><!-- end left posts-->
          </div>
        </div><!-- end timeline posts-->




      </div>
    </div>
    </div>



    <!-- Modal -->
    <div class="modal fade" id="modalShow" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
          </div>
          <div class="modal-body text-centers">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>


      <!-- Fixed navbar -->
        <nav class="navbar navbar-white navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <ul style="list-style-type: none; margin: 0; padding: 0; overflow: hidden;">
                        <li style="float: left;"><a class="navbar-brand" href="#"><b>DayDay</b></a></li>
                        <li style="float: left;">
                            <div style="margin-top: 18px">
                                <div class="inner">
                                    <!--<input id="search" type="search" class="search-input" Placeholder="Search for people, places and things"/>-->
                                    <!--<span data-icon="&#xe000;" aria-hidden="true" class="search-btn">-->
                                    <!--<input type="submit" class="searchsubmit" value="">-->
                                    <!--</span>-->

                                    <form>
                                        <div class="input-group pull-right" style="width: 450px">
                                            <input id="search" type="text" class="form-control" placeholder="Search">
                                            <div class="input-group-btn">
                                                <button class="btn btn-default btn-default" type="submit">
                                                    <i class="glyphicon glyphicon-search "></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="content-list" id="list">
                                <ul class="drop-list">
                                    <li>
                                        <a href="">
                                            <span class="item">
                                                <span class="icon people">
                                                    <span data-icon="&#xe001;" aria-hidden="true"></span>
                                                </span>
                                                <span class="text">People I may know</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="item">
                                                <span class="icon image">
                                                    <span data-icon="&#xe002;" aria-hidden="true"></span>
                                                </span>
                                                <span class="text">Photos of my friends</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="item">
                                                <span class="icon video">
                                                    <span data-icon="&#xe003;" aria-hidden="true"></span>
                                                </span>
                                                <span class="text">Movies my friends like</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="item">
                                                <span class="icon place">
                                                    <span data-icon="&#xe004;" aria-hidden="true"></span>
                                                </span>
                                                <span class="text">Places nearby</span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="item">
                                                <span class="icon music">
                                                    <span data-icon="&#xe005;" aria-hidden="true"></span>
                                                </span>
                                                <span class="text">Music my friends like</span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>


                    </ul>

                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="actives"><a href="profile">Profile</a></li>
                        <li><a href="home">Home</a></li>
                        <li>
                            <div class="dropdown">
                                <button class="dropbtn">Settings</button>
                                <div class="dropdown-content">
                                    <a href="user_detail">User detail</a>
                                    <a href="edit_profile">Edit profile</a>
                                    <a href="list_users">List users</a>
                                    <a href="file_manager">File manager</a>
                                    <a href="people_directory">People directory</a>
                                    <a href="grid_posts">Grid posts</a>
                                    <a href="/SocialNetworking/logout">Log Out</a>
                                </div>
                            </div>
                        </li>
                        
                        <li><a href="" target="_self" class="nav-controller"><i class="fa fa-user"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <!-- Online users sidebar content-->
        <div class="chat-sidebar">
            <div class="list-group text-left">
                <p class="text-center visible-xs"><a href="#" class="hide-chat btn btn-success">Hide</a></p>
                <p class="text-center chat-title">Online users</p>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Jeferh Smith</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-times-circle absent-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-1.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Dapibus acatar</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Antony andrew lobghi</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-2.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Maria fernanda coronel</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-4.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Markton contz</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-times-circle absent-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-3.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Martha creaw</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-times-circle absent-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-8.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Yira Cartmen</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-4.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Jhoanath matew</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-5.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Ryanah Haywofd</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-9.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Linda palma</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-10.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Andrea ramos</span>
                </a>
                <a href="#messages1" class="list-group-item">
                    <i class="fa fa-check-circle connected-status"></i>
                    <img src="${pageContext.request.contextPath}/resources/img/Friends/child-1.jpg" class="img-chat img-thumbnail">
                    <span class="chat-user-name">Dora ty bluekl</span>
                </a>
            </div>
        </div><!-- Online users sidebar content-->
        <!-- Modal -->
        <div class="modal fade" id="modalShow" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body text-centers">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <p class="text-muted"> Copyright &copy; Company - All rights reserved </p>
            </div>
        </footer>
        <script type="text/javascript">
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-49755460-1', 'auto', {'allowLinker': true});
            ga('require', 'linker');
            ga('linker:autoLink', ['bootdey.com', 'www.bootdey.com', 'demos.bootdey.com']);
            ga('send', 'pageview');

            $('#list').hide();

            $('#search').click(function (event) {

                event.stopPropagation();


                $("#list").fadeIn("fast");

            });

            $(document).click(function () {

                $('#list').hide();

            });
        </script>
  </body>

<!-- Mirrored from demos.bootdey.com/dayday/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:24:13 GMT -->
</html>
