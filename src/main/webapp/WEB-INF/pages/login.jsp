<%-- 
    Document   : login
    Author     : Timur Berezhnoi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sign in</title>

        <spring:url value="/resources/css/bootstrap.min.css" var="coreCss" />
        <spring:url value="/resources/css/login.css" var="loginCss" />

        <!-- Bootstrap core CSS -->
        <link href="${coreCss}" type="text/css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="${loginCss}" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <spring:url value="/j_spring_security_check"  var="ssCheck" />
        <div class="container">
            <form class="form-signin" name="form" action='${ssCheck}' method="POST">
                <h2 class="form-signin-heading">Please sign in</h2>
                <input type="text" name="j_username" class="form-control" placeholder="Name" required autofocus> 
                <input type="password" name="j_password" class="form-control" placeholder="Password" required> 
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">Remember me
                    </label>
                </div>
                <br />
                <c:if test="${param.status=='error'}">
                    <label style="color:red">Invalid username or password!!</label>
                </c:if>
                <c:if test="${param.status=='logout'}">
                    <label style="color:green">Logged out successfully!</label>
                </c:if>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
        </div>
    </body>
</html>