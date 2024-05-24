<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style type="text/css">
        body {
            font-family: verdana, serif;
            color: black;
            background-color: white;
            background-size: cover;
        }
    </style>
    <title>Add User</title>
</head>
<body bgcolor="#ffffcc">
<form action="customer?admin=customer" method="post">
    <div class="form-wrapper">
        <label for="name">Name:
            <input type="text" placeholder="Username" id="name" name="name" class="form-control">
        </label>
        <i class="zmdi zmdi-account"></i>
    </div>
    <div class="form-wrapper">
        <label for="email">Email:
            <input type="text" placeholder="Email Address" id="email" name="email" class="form-control">
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
    <button type="submit" name="login">Add User
        <i class="zmdi zmdi-arrow-right"></i>
    </button>
    <div style="text-align: center;">
        <h2><a href="customers.jsp"> Back </a></h2>
    </div>
</form>
</body>
</html>

