<%--
  Created by IntelliJ IDEA.
  User: wikiwoo
  Date: 19/05/2024
  Time: 5:50 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<title>Login form</title>
<!-- STYLE CSS -->
<link rel="stylesheet" href="./css/material-design-iconic-font.css">
<link rel="stylesheet" href="css/style.scss">
<style>
    body{
        font-family: verdetta,serif;
        color: black;
        background-color: whitesmoke;
        background-size: cover;
    }
</style>
<body>
<form action="user-login" method="post">
    <h3>Login</h3>
    <div class="form-wrapper">
        <label for="email">E-Mail:
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
    					<input hidden="hidden" name="login" value="Log in">
<%--    <a href ='product?delete=" + product.getId() + "'>--%>
        <button name="login">Login
        <i class="zmdi zmdi-arrow-right"></i>
    </button>
<%--    </a>--%>

    <div style="margin-top: 4rem; text-align: center;" class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Or Sign Up
						</span>

        <a href="register.jsp" class="txt2">
            Here
        </a>
    </div>
</form>
<div style="text-align: center;">
    <h2><a href="index.jsp"> Back </a></h2>
</div>
</body>
</html>
