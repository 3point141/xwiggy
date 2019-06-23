<%--
  Created by IntelliJ IDEA.
  User: amank
  Date: 6/23/2019
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Billing</title>
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

<h1>Your Cart Value for Coffee: 1<br> ${billing.getabc()}</h1>
<h1>Your Cart Value for Cookie: 2<br> ${billing.getbcd()}</h1>
<h1>Your Cart Value for Cake  : 1<br> ${billing.getdef()}</h1>

<br><br>

<h1>Thank you For Purchasing.</h1>
<br>
<table align="center">
<a href="home.jsp"><button class="bigbutton"><span>Log Out</span></button></a>
</table>
</body>
</html>
