<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
<%--    <link rel="stylesheet" href="./css/style.scss">--%>
    <style>
        body{
            font-family: verdetta,serif;
            color:white;
            background: linear-gradient(
                    rgba(0,0,0,0.65),rgba(0,0,0,0.65),rgba(0,0,0,0.38),rgba(0,0,0,0)
            )
            ,url('./img/Cats Vs Robots.jpg')no-repeat;
            background-size: cover;
        }
        .box{ width: 900px;
            float: right;
            border:1px solid none;
        }
        .box ul li{
            width: 120px;
            float:left;
            margin: 12px auto;
            text-align:center;
        }
        .box ul li a{ text-decoration: none;
            color:darkgrey;
        }
        .box ul li:hover {background-color: powderblue;}
        .box ul li a:hover{color:white;}
        .wd{
            width: 250px;
            height: 539px;
            background-color: black;
            opacity:0.9;
            padding:55px;
        }
        .wd h1{
            text-align:center;
            text-transform:uppercase;
            font-weight: bold;
        }
        .wd h4{
            text-align: justify;
            color:darkgrey;
            font-weight: normal;
        }
        .wd h2{
            text-align: center;
            text-transform: uppercase;
            font-weight: normal;
            margin: 40px auto;
        }
        .opt form , input[type="button"]{
            background-color: black;
            color:white;
            padding:10px;
            margin:-14px auto;
            padding-left:50px;
            padding-right:50px;
            text-align:center;
        }
        form, input[type="button"]:hover{background-color: powderblue;}
    </style>
    <title>Library Management System</title>
</head>
<body>
<div class="box">
    <ul type="none">
        <li><a href="login.jsp"> Login</a></li>
        <li><a href="contact.jsp"> Contact Us</a></li>
        <li><a href="aboutus.jsp"> About us</a></li>
        <li><a href="adminlogin.jsp"> Admin</a>
    </ul>
</div>
<div class="wd">
    <h2>Welcome to Sijie's Libraries</h2>
    <h4>This is Sijie's Libraries we give the best services ,we make sure we
        keep your information private and only accessible to you and we make
        sure we recommend the best genre of books and updated versions of book
        series. Take your time and explore our page.</h4>
    <div class="opt">
        <a href="register.jsp">
            <button type="button" value="Sign up">Sign Up</button>
        </a>
    </div>
    <br>
    <br> <p>For job vacancy, CONTACT US </p>
</div>
</body>
</html>