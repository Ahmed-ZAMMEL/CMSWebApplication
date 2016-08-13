<%-- 
    Document   : signIn
    Created on : Apr 24, 2016, 4:24:30 PM
    Author     : zammel
--%>

<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Sign In</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/bootstrap/css/bootstrap.min.css"/>">
    </head>
    <body>
        <form method="post" action="signIn">
            <fieldset>
                <legend>Sign in</legend>
                <label for >Email address</label>
                <input type="email" class="form-control field" id="emailId" name="email" value="<c:out value="${user.email}"/>" size="20" maxlength="20" />
                <span >${form.errors['email']}</span>
                <br />
                <label for >Password</label>
                <input type="password" class ="form-control field" id="passwordId" name="password" value="<c:out value="${user.password}"/>" size="20" maxlength="20" />
                <span >${form.errors['password']}</span>
                <br/>
                <input type="submit" class="btn btn-default" value="Sign In" /> <br/>
                <input type="submit" class="btn btn-default" value="Sign Up" />
                <br/>
                <p >${form.result}</p>
                <br />
                <%-- Control the user input using the session form--%>
                <c:if test="${!empty sessionScope.userSession}">
                    <p>You are connected with the following email address : 
                        ${user.email}
                    </p>
                </c:if>
            </fieldset>
        </form>
    </body>
</html>