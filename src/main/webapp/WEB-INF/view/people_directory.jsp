<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
        <link href="${pageContext.request.contextPath}/resources/assets/css/people_directory.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/searchBar.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/mysearchbar.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/bootstrap.3.3.6/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/angular-resource.min.js"></script>

        <style type="text/css">
            #b:hover { background-color:#2DC3E8; color:#fff; text-decoration: none; }
        </style>

    </head>

    <body>



        <!-- Begin page content -->
        <div class="container page-content ">
            <div class="row">
                <ul class="directory-list">
                    <li><a href="#">a</a></li>
                    <li><a href="#">b</a></li>
                    <li><a href="#">c</a></li>
                    <li><a href="#">d</a></li>
                    <li><a href="#">e</a></li>
                    <li><a href="#">f</a></li>
                    <li><a href="#">g</a></li>
                    <li><a href="#">h</a></li>
                    <li><a href="#">i</a></li>
                    <li><a href="#">j</a></li>
                    <li><a href="#">k</a></li>
                    <li><a href="#">l</a></li>
                    <li><a href="#">m</a></li>
                    <li><a href="#">n</a></li>
                    <li><a href="#">o</a></li>
                    <li><a href="#">p</a></li>
                    <li><a href="#">q</a></li>
                    <li><a href="#">r</a></li>
                    <li><a href="#">s</a></li>
                    <li><a href="#">t</a></li>
                    <li><a href="#">u</a></li>
                    <li><a href="#">v</a></li>
                    <li><a href="#">w</a></li>
                    <li><a href="#">x</a></li>
                    <li><a href="#">y</a></li>
                    <li><a href="#">z</a></li>
                </ul>
            </div>

            <div class="directory-info-row">
                <div class="row">
                    <c:forEach items="${sessionScope.auList}" var="allUList">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="panel" style="height: 210px">
                                <div class="panel-body">
                                    <div class="media">
                                        <c:forEach var="profilePhoto" items="${sessionScope.ppaList}">
                                            <c:if test="${profilePhoto.userId eq allUList.userId}">
                                                <a class="pull-left" href="#">
                                                    <img class="thumb media-object" src="${pageContext.request.contextPath}/resources/img/ProfilePhotoAlbum/${profilePhoto.fileLink}" alt="">
                                                </a>
                                            </c:if>
                                        </c:forEach>
                                        <div class="media-body">
                                            <h4>${allUList.firstName} ${allUList.lastName}</h4>
                                            <ul class="social-links">
                                                <li><a href="#"title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a href="#"title="Skype"><i class="fa fa-skype"></i></a></li>
                                                <li>
                                                    <c:choose>
                                                        <c:when test="${sessionScope.u.userId eq allUList.userId}">
                                                            <input id="b" type="button" value="Send Friend Request" style="display:none;">
                                                        </c:when>
                                                        <c:otherwise>


                                                            <c:forEach var="rs" items="${sessionScope.requestSent}">
                                                                <c:if test="${rs.userIdTo eq allUList.userId}">
                                                                    <c:set var="sentReqStatus" value="${allUList.userId}" scope="session"></c:set>
                                                                    <c:set var="sentfrReqId" value="${rs.friendRequstId}" scope="session"></c:set>
                                                                </c:if>
                                                            </c:forEach>
                                                            <c:forEach var="gr" items="${sessionScope.getRequests}">
                                                                <c:if test="${gr.userId eq allUList.userId}">
                                                                    <c:set var="getReqStatus" value="${allUList.userId}" scope="session"></c:set>
                                                                    <c:set var="getFrReqId" value="${rs.friendRequstId}" scope="session"></c:set>
                                                                </c:if>
                                                            </c:forEach>
                                                            <c:forEach var="grId" items="${sessionScope.getRequestsId}">
                                                                <c:if test="${grId.userId eq allUList.userId}">
                                                                    <c:set var="getReqId" value="${grId.friendRequstId}" scope="session"></c:set>
                                                                </c:if>
                                                            </c:forEach>
                                                            <c:choose>
                                                                <c:when test="${allUList.userId eq sessionScope.sentReqStatus}">
                                                                    <form:form commandName="fr" action="cancelRequest" method="post">
                                                                        <input type="hidden" name="friendRequstId" path="friendRequstId" value="${sessionScope.sentfrReqId}">
                                                                        <input type="hidden" name="userId" path="usersByUserId" value="${sessionScope.u.userId}">
                                                                        <input type="hidden" name="userIdTo" path="usersByUserIdTo" value="${allUList.userId}">
                                                                        <input type="hidden" name="status" path="status" value="0">
                                                                        <input id="b" type="submit" value="Cancel Friend Request" style="margin-left: 20px;" class="btn btn-danger">
                                                                    </form:form>
                                                                </c:when>
                                                                <c:when test="${allUList.userId eq sessionScope.getReqStatus}">
                                                                    <div style="float:left; margin: 0px"> 
                                                                        <form:form commandName="fr" action="acceptRequest" method="post">
                                                                            <input type="hidden" name="friendRequstId" path="friendRequstId" value="${sessionScope.getReqId}">
                                                                            <input type="hidden" name="userId" path="usersByUserId" value="${allUList.userId}">
                                                                            <input type="hidden" name="userIdTo" path="usersByUserIdTo" value="${sessionScope.u.userId}">
                                                                            <input type="hidden" name="status" path="status" value="2">
                                                                            <input style="margin-left: 20px; margin-top:0px" type="submit" value="Accept" class="btn btn-azure">

                                                                        </form:form></div>  
                                                                    <div style="float:left; margin: 0px">
                                                                        <form:form commandName="fr" action="rejectRequest" method="post">
                                                                            <input type="hidden" name="friendRequstId" path="friendRequstId" value="${sessionScope.getReqId}">
                                                                            <input type="hidden" name="userId" path="usersByUserId" value="${allUList.userId}">
                                                                            <input type="hidden" name="userIdTo" path="usersByUserIdTo" value="${sessionScope.u.userId}">
                                                                            <input type="hidden" name="status" path="status" value="0">
                                                                            <input style="margin-left: 20px" type="submit" value="Reject" class="btn btn-danger">
                                                                        </form:form> </div>   
                                                                    </c:when>        
                                                                    <c:otherwise>
                                                                        <form:form commandName="fr" action="sendRequest" method="post">
                                                                        <input type="hidden" name="userId" path="usersByUserId" value="${sessionScope.u.userId}">
                                                                        <input type="hidden" name="userIdTo" path="usersByUserIdTo" value="${allUList.userId}">
                                                                        <input type="hidden" name="status" path="status" value="1">
                                                                        <input id="b" type="submit" value="Send Friend Request" style="margin-left: 20px; margin-top:0px" class="btn btn-azure">
                                                                    </form:form>
                                                                </c:otherwise>      
                                                            </c:choose>


                                                        </c:otherwise>      
                                                    </c:choose>
                                                </li>
                                            </ul>
                                            <address>
                                                <c:set var = "regDate" value = "${fn:substring(allUList.regDate, 0, 10)}"></c:set>
                                                <strong>${allUList.email}</strong><br>
                                                From Dhaka, Bangladesh.<br>
                                                Member Since  ${regDate} <br>
                                            </address>



                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

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

    <!-- Mirrored from demos.bootdey.com/dayday/people_directory.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:25:00 GMT -->
</html>
