
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

    <!-- Mirrored from demos.bootdey.com/dayday/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:22:54 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <link rel="icon" href="img/favicon.png">
        <title>DayDay</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/resources/bootstrap.3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/font-awesome.4.6.1/css/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/timeline.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/login_register.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/forms.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/buttons.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/bootstrap.3.3.6/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/angular-resource.min.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body ng-app="myApp">

        <!-- Fixed navbar -->
        <nav class="navbar navbar-fixed-top navbar-transparent" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button id="menu-toggle" type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#home">Day-Day</a>
                </div>
            </div>
        </nav>
        <div class="wrapper">

            <div class="parallax filter-black">
                <div class="parallax-image"></div>
                <div class="small-info">

                    <div class="col-sm-10 col-sm-push-1 col-md-6 col-md-push-3 col-lg-6 col-lg-push-3">
                        <div class="card-group animated flipInX" style="height: 400px">
                            <div class="card" >
                        <div class="card-block">
                                    <div class="center">
                                        <h4 class="m-b-0"><span class="icon-text">Login</span></h4>
                                        <p class="text-muted">Access your account</p>
                                    </div>

                                    <c:url var="action" value="/home"></c:url>
                                    <form:form id="loginForm" commandName="user" action="${action}" method="post">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email" path="email" name="email">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password" path="password" name="password">
                                            <a href="#" class="pull-xs-right">
                                                <small>Forgot?</small>
                                            </a>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="center">
                                            <a href="home" class="btn  btn-azure">Login</a>
                                            <input class="btn btn-azure" type="submit" value="Sign in">
                                        </div>
                                        <table align="center">
                                            <tr>
                                                <td style="font-style: italic; color: red;">${message}</td>
                                            </tr>
                                        </table>
                                    </form:form>
                                </div>
                            </div>
                            <div class="card" >

                                <div class="card-block center">
                                    <h4 class="m-b-0">
                                        <span class="icon-text">Sign Up</span>
                                    </h4>
                                    <p class="text-muted">Create a new account</p>
                                    <c:url var="action" value="/user/add"></c:url>
                                    <form:form method="post" action="${action}" commandName="user">
                                        <c:if test="${!empty user.email}">
                                            <input class="form-control" type="text" path="userId">
                                        </c:if>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="First Name" type="text" name="firstName" path="firstName">
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Last Name" type="text" name="lastName" path="lastName">
                                        </div>
                                        <div class="form-group" style="margin-top: 15px">
                                            <input class="form-control" placeholder="Email" type="email" name="email" path="email">
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password" type="password" name="password" path="password">
                                        </div>
                                        <div class="form-group">
                                            <!--<label style="width: 70px; float: left; margin-left: 0px; padding-top: 4px">Birthday</label>-->
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect" style="width: 95px; margin-right:5px; float: left" name="day" path="day">
                                                <option selected="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
                                            </select>
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect" style="width: 95px; margin-right:5px; float: left" name="month" path="month">
                                                <option selected="">Month</option>
                                                <option value="Jan">Jan</option>
                                                <option value="Feb">Feb</option>
                                                <option value="Mar">Mar</option>
                                                <option value="Apr">Apr</option>
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
                                                <option selected="">Year</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option>

                                            </select>


                                        </div>
                                        <br><br>
                                        <div class="form-group pull-left" style="margin-top: 6px;">
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" style="width: 295px;" name="sex" path="sex">
                                                <option selected="">Sex</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <c:if test="${! empty user.email}">
                                                <input class="btn btn-azure" type="submit" value="Update"/>
                                            </c:if>
                                            <c:if test="${ empty user.email}">
                                                <input class="btn btn-azure" type="submit" value="Register"/>
                                            </c:if>
                                        </div>



                                    </form:form>
                                </div>
                            </div>
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
            </script>
        </div>
        <script src="${pageContext.request.contextPath}/resources/js/lib/angular.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/lib/angular-resource.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/angular-route.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/lib/underscore-min.js"></script>

        <script src="${pageContext.request.contextPath}/resources/js/module.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/constants.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/underscoreModule.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/app.js"></script>

        <script src="${pageContext.request.contextPath}/resources/js/regapp.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/loginCtrl.js"></script>


    </body>

    <!-- Mirrored from demos.bootdey.com/dayday/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Apr 2017 11:23:06 GMT -->
</html>
