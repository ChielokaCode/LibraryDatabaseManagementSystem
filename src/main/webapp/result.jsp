<%--
  Created by IntelliJ IDEA.
  User: wikiwoo
  Date: 23/05/2024
  Time: 7:09 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Result</title>
    <style>
        body {
            font-family: verdana, serif;
            color: black;
            background-color: whitesmoke;
             background-size: cover;
        }
    </style>
</head>
<body>
<div  style="text-align: center; justify-content: center; align-items: center; margin-top: 20rem">
    <h1>Registration Successful</h1>
    <form action="user-reg" method="get">
    <button class="btn btn-success mt-3 mb-3" type="submit">Log in here
        <i class="zmdi zmdi-arrow-right"></i>
    </button>
    <input hidden="hidden" name="login" value="login">
</form>
<%--<a href="login.jsp">Go back to Login</a>--%>
</div>
</body>
</html>

