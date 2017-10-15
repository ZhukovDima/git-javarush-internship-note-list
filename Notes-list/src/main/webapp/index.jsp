<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 10.10.2017
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Title</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="resources/css/main.css" rel="stylesheet" type="text/css">
    <script src="resources/js/jquery-3.2.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/angular.min.js"></script>
    <script src="resources/js/angular-route.min.js"></script>
    <script src="resources/js/app.js"></script>
</head>
<body ng-app="node-list">
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <span style="color: #5bdb48"><i class="fa fa-sticky-note" aria-hidden="true"></i></span>
                Node-List
            </a>
        </div>
        <form class="navbar-form pull-right">
            <div class="input-group">
                <input type="text" class="form-control" ng-model="search" placeholder="Искать в заметках">
                <div class="input-group-btn">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
            </div>
        </form>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1 class="mb-3">Заметки</h1>

            <div ng-view>

            </div>
        </div>
    </div>
</div>

</body>
</html>
