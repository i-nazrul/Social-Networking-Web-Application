<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en-US">
    <head>
        <meta charset="UTF-8" /> 
        <title> Social User </title>
    </head>
    <body ng-app="myApp">
        <div ng-controller="UsersController as userCtrl">
            <h1> Social Registration </h1>
            <form name="usersForm" method="POST">
                <table>
                    <tr><td colspan="2">
                            <div ng-if="userCtrl.flag !== 'edit'">
                                <h3> Add New Users </h3> 
                            </div>
                            <div ng-if="userCtrl.flag === 'edit'">
                                <h3> Update Users for ID: {{ userCtrl.user.userId}} </h3> 
                            </div> </td>
                    </tr>
                    <tr>
                        <td>First Name: </td> <td><input type="text" name="firstName" ng-model="userCtrl.user.firstName" required/> 
                            <span ng-show="usersForm.firstName.$error.required" class="msg-val">First Name is required.</span> </td>
                    </tr>
                    <tr>
                        <td>Last Name: </td> <td><input type="text" name="lastName" ng-model="userCtrl.user.lastName" required/> 
                            <span ng-show="usersForm.lastName.$error.required" class="msg-val">Last Name is required.</span> </td>
                    </tr>
                    <tr>
                        <td>Email: </td> <td><input type="text" name="email" ng-model="userCtrl.user.email" required/> 
                            <span ng-show="usersForm.email.$error.required" class="msg-val">Email is required.</span> </td>
                    </tr>
                    <tr>
                        <td>Password: </td> <td><input type="password" name="password" ng-model="userCtrl.user.password" required/> 
                            <span ng-show="usersForm.password.$error.required" class="msg-val">Password is required.</span> </td>
                    </tr>
                    <tr>
                        <td>Date of Birth: </td> <td><input type="text" name="dob" ng-model="userCtrl.user.day" required/> 
                            <span ng-show="usersForm.dob.$error.required" class="msg-val">Date of birth is required.</span> </td>
                    </tr>
                    <tr>
                        <td>Sex: </td> <td><input type="text" name="sex" ng-model="userCtrl.user.sex" required/> 
                            <span ng-show="usersForm.sex.$error.required" class="msg-val">Sex is required.</span> </td>
                    </tr>
                    <tr>
                        <td>Status: </td> <td><input type="text" name="status" ng-model="userCtrl.user.status" required/> 
                            <span ng-show="usersForm.status.$error.required" class="msg-val">Status is required.</span> </td>
                    </tr>
                    <tr>
                        <td colspan="2"> <span ng-if="userCtrl.flag === 'created'" class="msg-success">Users successfully added.</span>
                            <span ng-if="userCtrl.flag === 'failed'" class="msg-val">Users already exists.</span> </td>
                    </tr>
                    <tr><td colspan="2">
                            <div ng-if="userCtrl.flag !== 'edit'">
                                <input  type="submit" ng-click="userCtrl.addUsers()" value="Add User"/> 
                                <input type="button" ng-click="userCtrl.reset()" value="Reset"/>
                            </div>
                            <div ng-if="userCtrl.flag === 'edit'">
                                <input  type="submit" ng-click="userCtrl.updateUsersDetail()" value="Update User"/> 	
                                <input type="button" ng-click="userCtrl.cancelUpdate()" value="Cancel"/>				   
                            </div> </td>
                    </tr>
                    <tr>
                        <td colspan="2"> <span ng-if="userCtrl.flag === 'deleted'" class="msg-success">Users successfully deleted.</span>
                    </tr>
                </table>     
            </form>
            <table>
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
            </table>
        </div>
        <script src="${pageContext.request.contextPath}/resources/js/lib/angular.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/lib/angular-resource.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/angular-route.js"></script>
         <script src="${pageContext.request.contextPath}/resources/js/module.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/constants.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/underscoreModule.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/regapp.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    </body>
</html>