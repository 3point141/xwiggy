<%--
  Created by IntelliJ IDEA.
  User: amank
  Date: 6/22/2019
  Time: 9:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
</head>

<style>
    body {
        background: #393939;
        color: white;
        font: 14px Helvetica, sans-serif;
    }

    label {
        font: bold 20px Helvetica, sans-serif;
        display: block;
        float: left;
        text-align: right;
        padding: 5px 10px 0 0;
        width: 140px;
    }
    form div {
        overflow: hidden;
        margin: 0 0 5px 0;
    }

    .dec {
        background-position: 0 -29px;
    }

    .buttons {
        padding: 20px 0 0 140px;
    }

    .bigbutton {
        border-radius: 4px;
        background-color: #f4511e;
        border: none;
        color: #FFFFFF;
        text-align: center;
        font-size: 15px;
        padding: 20px;
        width: 120px;
        transition: all 0.5s;
        cursor: pointer;
        margin: 5px;
    }

    .bigbutton span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
    }

    .bigbutton span:after {
        content: '\00bb';
        position: absolute;
        opacity: 0;
        top: 0;
        right: -20px;
        transition: 0.5s;
    }

    .bigbutton:hover span {
        padding-right: 25px;
    }

    .bigbutton:hover span:after {
        opacity: 1;
        right: 0;
    }
</style>
<body>
<br><br><br><br>
<h1 align="center">WELCOME NEW USER. REGISTER HERE.</h1>
<br><br><br><br><br><br>
<form:form id="regForm" modelAttribute="user" action="registerProcess"
           method="post">

    <table align="center">
        <tr>
            <td><form:label path="username">Username</form:label></td>
            <td><form:input path="username" name="username" id="username"/></td>
        </tr>
        <tr>
            <td><form:label path="password">Password</form:label></td>
            <td><form:password path="password" name="password"
                               id="password"/></td>
        </tr>
        <tr>
            <td><form:label path="firstname">FirstName</form:label></td>
            <td><form:input path="firstname" name="firstname"
                            id="firstname"/></td>
        </tr>
        <tr>
            <td><form:label path="lastname">LastName</form:label></td>
            <td><form:input path="lastname" name="lastname" id="lastname"/></td>
        </tr>
        <tr>
            <td><form:label path="email">Email</form:label></td>
            <td><form:input path="email" name="email" id="email"/></td>
        </tr>
        <tr>
            <td><form:label path="address">Address</form:label></td>
            <td><form:input path="address" name="address" id="address"/></td>
        </tr>
        <tr>
            <td><form:label path="phone">Phone</form:label></td>
            <td><form:input path="phone" name="phone" id="phone"/></td>
        </tr>

        <tr>
            <td></td>
            <td><form:button class="bigbutton" id="register" name="register">Register</form:button></td>
        </tr>
        <tr></tr>
        <tr>
            <td></td>
            <td><button class="bigbutton"><a href="home.jsp" style="text-decoration: none; color: white;">Home</a></button></td>
        </tr>
    </table>
</form:form>

</body>
</html>