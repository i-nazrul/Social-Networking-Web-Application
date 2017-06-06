
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <link rel="icon" href="img/favicon.png">
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
        <script src="${pageContext.request.contextPath}/resources/assets/js/angular-resource.min.js"></script>


    </head>

    <body class="list-users">



        <!-- Begin page content -->
        <div class="container page-content">
            <div class="row">
                <div class="col">
                    <div class="widget">
                        <div class="table-responsive">
                            <table class="table user-list">
                                <thead>
                                    <tr>
                                        <th><span>User</span></th>
                                        <th><span>Created</span></th>
                                        <th class="text-center"><span>Status</span></th>
                                        <th><span>Email</span></th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-2.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Admin</span>
                                        </td>
                                        <td>
                                            2013/08/08
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-default">Inactive</span>
                                        </td>
                                        <td>
                                            <a href="#">mila@kunis.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-3.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Member</span>
                                        </td>
                                        <td>
                                            2013/08/12
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-success">Active</span>
                                        </td>
                                        <td>
                                            <a href="#">marlon@brando.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-5.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Registered</span>
                                        </td>
                                        <td>
                                            2013/03/03
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-danger">Banned</span>
                                        </td>
                                        <td>
                                            <a href="#">jack@email.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-8.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Registered</span>
                                        </td>
                                        <td>
                                            2004/01/24
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-warning">Pending</span>
                                        </td>
                                        <td>
                                            <a href="#">humphrey@email.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/guy-7.jpg" alt="">
                                            <a href="#" class="user-link">Robert Downey Jr.</a>
                                            <span class="user-subhead">Admin</span>
                                        </td>
                                        <td>
                                            2013/12/31
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-success">Active</span>
                                        </td>
                                        <td>
                                            <a href="#">spencer@tracy</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-1.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Admin</span>
                                        </td>
                                        <td>
                                            2013/08/08
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-default">Inactive</span>
                                        </td>
                                        <td>
                                            <a href="#">mila@kunis.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-2.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Member</span>
                                        </td>
                                        <td>
                                            2013/08/12
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-success">Active</span>
                                        </td>
                                        <td>
                                            <a href="#">marlon@brando.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-3.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Registered</span>
                                        </td>
                                        <td>
                                            2013/03/03
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-danger">Banned</span>
                                        </td>
                                        <td>
                                            <a href="#">jack@email.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-4.jpg" alt="">
                                            <a href="#" class="user-link">John Doe</a>
                                            <span class="user-subhead">Registered</span>
                                        </td>
                                        <td>
                                            2004/01/24
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-warning">Pending</span>
                                        </td>
                                        <td>
                                            <a href="#">humphrey@email.com</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/resources/img/Friends/woman-5.jpg" alt="">
                                            <a href="#" class="user-link">Robert Downey Jr.</a>
                                            <span class="user-subhead">Admin</span>
                                        </td>
                                        <td>
                                            2013/12/31
                                        </td>
                                        <td class="text-center">
                                            <span class="label label-success">Active</span>
                                        </td>
                                        <td>
                                            <a href="#">spencer@tracy</a>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="#" class="table-link success">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <ul class="pagination pull-right">
                            <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                        </ul>
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

    <!-- Mirrored from demos.bootdey.com/dayday/list_users.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:24:59 GMT -->
</html>
