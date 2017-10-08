<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Admin List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>

    <%--Navbar--%>
    <spring:url value="/admin/add/" var="addUrl"/>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Admin Page</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul class="nav navbar-nav">
                    <li><a href="${addUrl}">Add new User</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>


<div class="container-fluid">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#adminTable" role="tab" aria-controls="home">Admin Table</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#userTable" role="tab" aria-controls="profile">User Table</a>
        </li>
    </ul>

    <%--Вкладка админа--%>
    <div class="tab-content">
        <div class="tab-pane active" id="adminTable" role="tabpanel">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="user">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.age}</td>
                        <td>${user.email}</td>
                        <td>${user.password}</td>
                        <td>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#${user.id}">Edit</button>

                                <%--Modal  Form--%>
                            <div class="modal" id="${user.id}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Edit User</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form:form action="'/admin/update' + ${user.id}" method="post" modelAttribute="user">
                                                <%--<div class="form-group">
                                                    <input type="hidden" class="form-control" name="userId" value="${user.id}"/>
                                                </div>--%>

                                                <div class="form-group">
                                                    <label class="control-label" for="userName">User Name:</label>
                                                    <form:input class="form-control" id="userName" type="text" path="name" />
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label" for="userAge">User Age:</label>
                                                    <form:input class="form-control" id="userAge" type="number" path="age"/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label" for="userEmail" >User Email:</label>
                                                    <form:input class="form-control" id="userEmail" type="email" path="email"/>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label" for="userPass">User Password:</label>
                                                    <form:input class="form-control" id="userPass" type="password" path="password"/>
                                                </div>

                                                <div>
                                                    <button class="btn btn-primary">Save</button>
                                                </div>
                                                <%--<spring:url value="/admin/save" var="saveUrl"/>
                                                <a href="${saveUrl}" class="btn btn-primary"/>Save</a>--%>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <spring:url value="/admin/delete/${user.id}" var="deleteUrl"/>
                            <a href="${deleteUrl}" class="btn btn-danger"/>Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>


        <%--Вкладка пользователя--%>
        <div class="tab-pane" id="userTable" role="tabpanel">
            <div class="tab-content">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Role</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="user">
                        <tr>
                            <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.name}" /></td>
                            <td><c:out value="${user.age}" /></td>
                            <td><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.password}" /></td>
                            <td><c:out value="${user.roles}" /></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <!-- Чтобы работали скрипты -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>
