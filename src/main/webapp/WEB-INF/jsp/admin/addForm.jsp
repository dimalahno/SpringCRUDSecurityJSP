<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8" />

    <title>Add User Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

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
            <a class="navbar-brand" href="#">Add User</a>
        </div>
    </div>
</nav>

<div class="container-fluid">
  <div class="row">
    <div class="col-md-4">
      <form:form action="/admin/save" method="post" modelAttribute="user">
            <form:hidden path="id"/>

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
              <button class="btn btn-success">Save</button>
            </div>
      </form:form>
    </div>
  </div>
</div>



   <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
   integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
   integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
   integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>

</html>
