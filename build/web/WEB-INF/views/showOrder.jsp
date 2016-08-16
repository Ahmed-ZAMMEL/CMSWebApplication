<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
    </head>
    <body>
        <p>${message}<p/>
        <p>Last name : ${order.client.lastName}<p/>
        <p>First name : ${order.client.firstName}<p/>
        <p>Delivery Address : ${order.client.deliveryAddress}<p/>
        <p>Phone number : ${order.client.phoneNumber} <p/>
        <p>Email address : ${order.client.emailAddress}<p/>
        <p>Date : ${order.date}</p>
        <p>Amount : ${order.amount}</p>
        <p>Method of payment : ${order.methodOfPayment}</p>
        <p>Payment status : ${order.paymentStatus}</p>
        <p>Delivery method : ${order.deliveryMethod}</p>
        <p>Delivery status : ${order.deliveryStatus}</p>
    </body>
</html>
