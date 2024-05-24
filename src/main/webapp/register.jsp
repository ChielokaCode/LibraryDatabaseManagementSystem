<%--
  Created by IntelliJ IDEA.
  User: wikiwoo
  Date: 19/05/2024
  Time: 5:49 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style>
        body{
            font-family: verdetta, serif;
            background-color: whitesmoke;
            color: black;
            background-size: cover;
        }
    </style>
</head>
<body>
<form action="user-reg" method="post">
    <h1 style="text-align: center">SignUp</h1>
    <div class="form-wrapper">
        <label for="name">Name:
            <input type="text" placeholder="Username" id="name" name="name" class="form-control">
        </label>
        <i class="zmdi zmdi-account"></i>
    </div>
    <div class="form-wrapper">
        <label for="email">Email:
            <input type="email" placeholder="Email Address" id="email" name="email" class="form-control">
        </label>
        <i class="zmdi zmdi-email"></i>
    </div>
    <div class="form-wrapper">
        <label for="password">
            <input type="password" placeholder="Password" id="password" name="password" class="form-control">
        </label>
        <i class="zmdi zmdi-lock"></i>
    </div>
    <div class="form-wrapper">
        <label for="phone">Phone:
            <input type="text" placeholder="Phone" name="phone" id="phone" class="form-control">
        </label>
        <i class="zmdi zmdi-lock"></i>
    </div>
<%--    <input hidden="hidden" name="adminlogin" value="adminlogin">--%>
    <button type="submit">SignUp
        <i class="zmdi zmdi-arrow-right"></i>
    </button>

    <div style="margin-top: 2rem; text-align: center;" class="flex-col-c p-t-155">
        <span class="txt1 p-b-17">Already a member? Login </span>
        <a href="login.jsp" class="txt2">
            Here
        </a>
    </div>
</form>
<div style="text-align: center;">
    <h2><a href="index.jsp"> Back </a></h2>
</div>
</body>
</html>
