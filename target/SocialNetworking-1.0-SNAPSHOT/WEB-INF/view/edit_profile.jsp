<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from demos.bootdey.com/dayday/edit_profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:24:38 GMT -->
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
        <link href="${pageContext.request.contextPath}/resources/assets/css/edit_profile.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/user_detail.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/file_manager.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/friends.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/grid_posts.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/people_directory.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/photos1.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/timeline.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/cover.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/forms.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/buttons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/searchBar.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/mysearchbar.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/bootstrap.3.3.6/js/bootstrap.min.js"></script>



    </head>

    <body>



        <!-- Begin page content -->
        <div class="container page-content edit-profile">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <!-- NAV TABS -->
                    <ul class="nav nav-tabs nav-tabs-custom-colored tabs-iconized">
                        <li class="active"><a href="#profile-tab" target="_self" data-toggle="tab" aria-expanded="true"><i class="fa fa-user"></i> Profile</a></li>
                        <li class=""><a href="#activity-tab" target="_self" data-toggle="tab" aria-expanded="false"><i class="fa fa-rss"></i> Recent Activity</a></li>
                        <li class=""><a href="#settings-tab" target="_self" data-toggle="tab" aria-expanded="false"><i class="fa fa-gear"></i> Settings</a></li>
                    </ul>
                    <!-- END NAV TABS -->
                    <div class="tab-content profile-page">
                        <!-- PROFILE TAB CONTENT -->
                        <div class="tab-pane profile active" id="profile-tab">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="user-info-left">
                                        <img src="${pageContext.request.contextPath}/resources/img/ProfilePhotoAlbum/${pic}" alt="Profile Picture">
                                        <h2>${sessionScope.u.firstName} ${sessionScope.u.lastName}</h2>
                                        <div class="contact">
                                             
                                            <form method="POST" enctype="multipart/form-data" action="uploadPic/${sessionScope.u.userId}">
                                            <p>
                                                <span class="file-input btn btn-azure btn-file">
                                                    <!--<input  type="hidden" name="userId" path="userId" value="${sessionScope.u.userId}">-->
                                                    Change Avatar <input type="file" name="file_link">
                                                    
                                                </span>
                                                <input class="btn btn-azure" type="submit" value="Photo Update"/>
                                            </p>
                                            </form>
                                            <p>
                                                <span class="file-input btn btn-azure btn-file">
                                                    Change Cover <input type="file" multiple="">
                                                </span>
                                            </p>
                                            <ul class="list-inline social">
                                                <li><a href="#" title="Facebook"><i class="fa fa-facebook-square"></i></a></li>
                                                <li><a href="#" title="Twitter"><i class="fa fa-twitter-square"></i></a></li>
                                                <li><a href="#" title="Google Plus"><i class="fa fa-google-plus-square"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="user-info-right">
                                        <div class="basic-info">
                                            <c:url var="action" value="/update"></c:url>
                                    <form:form method="post" action="${action}" commandName="user">
                                        
                                        <%--<c:if test="${!empty user.userId}">--%>
                                            <input class="form-control" type="hidden" name="userId" path="userId" value="${sessionScope.u.userId}">
                                        <%--</c:if>--%>
                                            <h3><i class="fa fa-square"></i> Basic Information</h3>
                                            <p class="data-row">
                                                <input type="text" placeholder="First Name" name="firstName" path="firstName" value="${sessionScope.u.firstName}"/>
                                                <span class="data-value"></span>
                                            </p>
                                            <p class="data-row">
                                                <input type="text" placeholder="Last Name" name="lastName" path="lastName" value="${sessionScope.u.lastName}"/>
                                                <span class="data-value"></span>
                                            </p>
                                            <p class="data-row">
                                                <input type="email" placeholder="Email" name="email" path="email" value="${sessionScope.u.email}"/>
                                                <span class="data-value"></span>
                                            </p>
                                            <p class="data-row">
                                                <input type="text" placeholder="Password" name="password" path="password" value="${sessionScope.u.password}"/>
                                                <span class="data-value"></span>
                                            </p>
                                            <p class="data-row">
                                                <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect" style="width: 95px; margin-right:5px; float: left" name="day" path="day">
                                                <option value="${sessionScope.u.day}">${sessionScope.u.day}</option><option>Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
                                            </select>
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect" style="width: 95px; margin-right:5px; float: left" name="month" path="month">
                                                <option value="${sessionScope.u.month}">${sessionScope.u.month}</option>
                                                <option>Month</option>
                                                <option value="Jan">Jan</option>
                                                <option value="Feb">Feb</option>
                                                <option value="Mar">Mar</option>
                                                <option value="App">App</option>
                                                <option value="May">May</option>
                                                <option value="Jun">Jun</option>
                                                <option value="Jul">Jul</option>
                                                <option value="Aug">Aug</option>
                                                <option value="Sep">Sep</option>
                                                <option value="Oct">Oct</option>
                                                <option value="Nov">Nov</option>
                                                <option value="Dec">Dec</option>
                                            </select>
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect" style="width: 94px; float: left" name="year" path="year">
                                                <option value="${sessionScope.u.year}">${sessionScope.u.year}</option><option>Year</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option>

                                            </select>
                                            </p>
                                            <br><br>
                                            <p class="data-row">
                                                <select class="custom-select mb-2 mr-sm-2 mb-sm-0" style="width: 295px;" name="sex" path="sex">
                                                <option value="${sessionScope.u.sex}">${sessionScope.u.sex}</option>
                                                    <option>Sex</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                                <span class="data-value"></span>
                                            </p>
                                            <p class="data-row">
                                                <%--<c:if test="${! empty userId}">--%>
                                                <input class="btn btn-azure" type="submit" value="Update"/>
                                            <%--</c:if>--%>
                                            </p>
                                            
                                        </form:form>
                                        </div>
                                    
                                     
<!--                                        <div class="about">
                                            <h3><i class="fa fa-square"></i> About Me</h3>
                                            <p>Dramatically facilitate proactive solutions whereas professional intellectual capital. Holisticly utilize competitive e-markets through intermandated meta-services. Objectively.</p>
                                            <p>Monotonectally foster future-proof infomediaries before principle-centered interfaces. Assertively recaptiualize cutting-edge web services rather than emerging "outside the box" thinking. Phosfluorescently cultivate resource maximizing technologies and user-centric convergence. Completely underwhelm cross functional innovation vis-a-vis.</p>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PROFILE TAB CONTENT -->

                        <!-- ACTIVITY TAB CONTENT -->
                        <div class="tab-pane activity" id="activity-tab">
                            <ul class="list-unstyled activity-list">
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> commented on <a href="#">Special Deal 2013</a> <span class="timestamp">12 minutes ago</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> posted <a href="#">a new blog post</a> <span class="timestamp">4 hours ago</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> edited his profile <span class="timestamp">11 hours ago</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> has added review on <a href="#">jQuery Complete Guide</a> book <span class="timestamp">Yesterday</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> liked <a href="#">a post</a> <span class="timestamp">December 12</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> has completed one task <span class="timestamp">December 11</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> uploaded <a href="#">new photos</a> <span class="timestamp">December 5</span>
                                    </p>
                                </li>
                                <li>
                                    <i class="fa fa-times activity-icon pull-left"></i>
                                    <p>
                                        <a href="#">Jonathan</a> has updated his credit card info <span class="timestamp">September 28</span>
                                    </p>
                                </li>
                            </ul>
                            <p class="text-center more"><a href="#" class="btn btn-custom-primary">View more <i class="fa fa-long-arrow-right"></i></a></p>
                        </div>
                        <!-- END ACTIVITY TAB CONTENT -->

                        <!-- SETTINGS TAB CONTENT -->
                        <div class="tab-pane settings" id="settings-tab">
                            <form class="form-horizontal" role="form">
                                <fieldset>
                                    <h3><i class="fa fa-square"></i> Change Password</h3>
                                    <div class="form-group">
                                        <label for="old-password" class="col-sm-3 control-label">Old Password</label>
                                        <div class="col-sm-4">
                                            <input type="password" id="old-password" name="old-password" class="form-control">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <label for="password" class="col-sm-3 control-label">New Password</label>
                                        <div class="col-sm-4">
                                            <input type="password" id="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password2" class="col-sm-3 control-label">Repeat Password</label>
                                        <div class="col-sm-4">
                                            <input type="password" id="password2" name="password2" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <h3><i class="fa fa-square"></i> Privacy</h3>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Show my display name</span>
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Show my birth date</span>
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Show my email</span>
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Show my online status on chat</span>
                                        </label>
                                    </div>
                                </fieldset>
                                <h3><i class="fa fa-square"> </i>Notifications</h3>
                                <fieldset>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Receive message from administrator</span>
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">New product has been added</span>
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Product review has been approved</span>
                                        </label>
                                    </div>

                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" class="colored-blue" checked="checked">
                                            <span class="text">Others liked your post</span>
                                        </label>
                                    </div>
                                </fieldset>
                            </form>
                            <p class="text-center"><a href="#" class="btn btn-custom-primary"><i class="fa fa-floppy-o"></i> Save Changes</a></p>
                        </div>
                        <!-- END SETTINGS TAB CONTENT -->
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

    <!-- Mirrored from demos.bootdey.com/dayday/edit_profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:24:39 GMT -->
</html>
