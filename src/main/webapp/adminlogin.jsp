<%--
  Created by IntelliJ IDEA.
  User: wikiwoo
  Date: 19/05/2024
  Time: 6:04 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <link rel="stylesheet" href="./css/admin.css">
</head>
<body>
<form action="admin-login" method="post">
    <h1 style="text-align: center">Login</h1>
    <div class="form-wrapper">
        <label for="email">Email:
            <input type="email" name="email" id="email" placeholder="Email" class="form-control">
        </label>
        <i class="zmdi zmdi-account"></i>
    </div>
    <div class="form-wrapper">
        <label for="password">Password:
            <input type="password" name="password" id="password" placeholder="Password" class="form-control">
        </label>
        <i class="zmdi zmdi-lock"></i>
    </div>
    <input hidden="hidden" name="adminlogin" value="Log in">
    <button type="submit">Login
        <i class="zmdi zmdi-arrow-right"></i>
    </button>
</form>
<div style="text-align: center;">
    <h2><a href="index.jsp"> Back </a></h2>
</div>
</body>
</html>

