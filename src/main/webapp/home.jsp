<%--
  Created by IntelliJ IDEA.
  User: amank
  Date: 6/22/2019
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    <style>
        body {
            background: #393939;
            color: white;
            font: 14px Helvetica, sans-serif;
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
<br><br><br><br>
<H1 align="center">XWIGGY | A FASTER WAY TO ORDER YOUR FOOD</H1>
<br><br><br><br><br><br>
<table align="center">
    <tr>
        <td><a href="login"><button class="bigbutton"><span>Log In</span></button></a></td>
        <td><a href="register"><button class="bigbutton"><span>Register</span></button></a></td>
    </tr>
</table>
</body>
</html>