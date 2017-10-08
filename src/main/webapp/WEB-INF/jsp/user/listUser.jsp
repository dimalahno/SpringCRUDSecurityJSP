
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value= '/static/assets/libs/bootstrap/css/bootstrap.css'/>" media="screen" />

    <!-- You Custom Bootstrap Skin -->
    <link rel="stylesheet" href="<c:url value= '/static/bootstrap_skin.css'/>" />
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">User Page</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="tab-content">
        <div class="tab-pane active" id="userTable" role="tabpanel">
            <table class="table table-hover ">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Email</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="user">
                        <tr>
                            <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.name}" /></td>
                            <td><c:out value="${user.age}" /></td>
                            <td><c:out value="${user.email}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
