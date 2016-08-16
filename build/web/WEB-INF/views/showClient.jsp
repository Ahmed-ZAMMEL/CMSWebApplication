<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/bootstrap/css/bootstrap.min.css"/>">
    </head>
    <body>
        <p>${message}<p/>
        <p>Last name : ${client.lastName}<p/>
        <p>First name : ${client.firstName}<p/>
        <p>Delivery Address : ${client.deliveryAddress}<p/>
        <p>Phone number : ${client.phoneNumber} <p/>
        <p>Email address : ${client.emailAddress}<p/>
    </body>
</html>
