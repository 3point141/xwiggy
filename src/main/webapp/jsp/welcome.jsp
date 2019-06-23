<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: amank
  Date: 6/22/2019
  Time: 10:16 PM
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

        label {
            font: bold 20px Helvetica, sans-serif;
            display: block;
            float: left;
            text-align: right;
            padding: 5px 10px 0 0;
            width: 140px;
        }
        input[type=text] {
            float: left;
            width: 40px;
            font: bold 20px Helvetica, sans-serif;
            padding: 3px 0 0 0;
            text-align: center;
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

</head>
<body>
<h1 align="left">Welceome, ${firstname}</h1>
<p>Below are your account details</p>
<table cellpadding="30%" align="center" >
    <tr>
        <td>First Name</td>
        <td>${firstname}</td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td>${lastname}</td>
    </tr>
    <tr>
        <td>Mobile Number</td>
        <td>${mobile}</td>
    </tr>
    <tr>
        <td>Email Id</td>
        <td>${email}</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td>

        </td>
    </tr>
    <tr>
        <td></td>
        <td><a href="home.jsp"><button class="bigbutton">Log Out</button> </a> </td>
        <td><a href="menu"><button class="bigbutton">Menu</button> </a> </td>
    </tr>

</table>


</body>
</html>