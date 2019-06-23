<%--
  Created by IntelliJ IDEA.
  User: amank
  Date: 6/22/2019
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>

    <style type="text/css">
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

</head>
<body>

<form:form id="loginForm" modelAttribute="login" action="loginProcess"
           method="post">
    <br><br><br><br>
    <H1 align="center">LOGIN TO XWIGGY</H1>
    <br><br><br><br><br><br>
    <table align="center">
        <tr>
            <td><form:label path="username">Username: </form:label></td>
            <td><form:input path="username" name="username" id="username"/></td>
        </tr>
        <tr>
            <td><form:label path="password">Password:</form:label></td>
            <td><form:password path="password" name="password"
                               id="password"/></td>
        </tr>
        <tr>
            <td></td>
            <td align="left"><form:button class="bigbutton" id="login" name="login">Login</form:button></td>
        </tr>

        <tr></tr>
        <tr>
            <td></td>
            <td><button class="bigbutton"><a href="home.jsp" style="text-decoration: none; color: white;">Home</a></button></td>
        </tr>
    </table>
</form:form>
<table align="center">
    <tr>
        <td style="font-style: italic; color: red;">${message}</td>
    </tr>
</table>

</body>
</html>