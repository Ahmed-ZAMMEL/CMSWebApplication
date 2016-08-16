<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a new order</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/bootstrap/css/bootstrap.min.css"/>">
    </head>
    <body>
        <div class="container">
            <form method="post" action="orderCreation">
                <fieldset> 
                    <div class="row">
                        <legend> Information about client </legend>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-3"><label for="firstName">Fist name</label></div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" id="firstName"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="lastName">Last name</label>*</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="lastName" id="lastName"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="deliveryAddress">Delivery address</label>*</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="deliveryAddress" id="deliveryAddress"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="phoneNumber">Phone number</label>*</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="phoneNumber" id="phoneNumber"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="emailAddress">Email address</label></div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="emailAddress" id="emailAddress"/></div>
                        </div>
                    </div>
                </fieldset>
                <fieldset> 
                    <div class="row">
                        <legend> Information about order  </legend>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-3"><label for="orderDate">Date</label>*</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="orderDate" id="orderDate"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="amount">Amount</label>*</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="amount" id="amount"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="methodOfPayment">Method of payment</label>*</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="methodOfPayment" id="methodOfPayment"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="paymentStatus">Payment status</label></div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="paymentStatus" id="paymentStatus"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="deliveryMethod">Delivery method</label>*/</div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="deliveryMethod" id="deliveryMethod"/></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3"><label for="deliveryStatus">Delivery Status</label></div>
                            <div class="col-lg-3"><input type="text" class="form-control" size="20" maxlength="20" name="deliveryStatus" id="deliveryStatus"/></div>
                        </div>
                        
                        <div class="row">
                            <input type="submit" class="btn btn-success" value="submit" />
                        </div>
                        <div class="row">
                            <input type="reset" class="btn btn-success"  value="Reset"/>
                        </div>
                    </div>
                </fieldset>
            </form>
            
        </div>
        
    </body>
</html>
