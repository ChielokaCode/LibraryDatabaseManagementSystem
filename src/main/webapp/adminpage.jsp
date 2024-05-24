<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style>
        body {
            font-family: verdana, serif;
            color: #ff0000;
            background: linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65), rgba(0,0,0,0.38), rgba(0,0,0,0)), url('./img/Confucius and the World He created.jpg') no-repeat;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        .box {
            width: 900px;
            float: right;
            border: 1px solid none;
            margin-right: 20px;
        }
        .box ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        .box ul li {
            float: left;
            margin: 12px auto;
            text-align: center;
        }
        .box ul li a {
            text-decoration: none;
            color: darkgrey;
            padding: 10px 20px;
            display: block;
        }
        .box ul li a:hover {
            color: white;
            background-color: powderblue;
        }
        .wd {
            width: 250px;
            height: 539px;
            background-color: rgba(0,0,0,0.9);
            padding: 55px;
            float: left;
        }
        .wd h1 {
            text-align: center;
            text-transform: uppercase;
            margin: 40px auto;
            color: #ff0000;
        }
        .wd h4 {
            text-align: justify;
            color: darkgrey;
        }
        .opt form {
            text-align: center;
            margin-top: 20px;
        }
        input[type="button"] {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        input[type="button"]:hover {
            background-color: powderblue;
        }
    </style>
</head>
<body>
<div class="box">
    <ul>
        <li><a href="customers.jsp">View Users</a></li>
        <li><a href="viewbook.jsp">View Books</a></li>
        <li><a href="issuedbooks.jsp">Issued Books</a></li>
        <li><a href="librarian.jsp">Librarians</a></li>
        <li><a href="purchases.jsp">Purchases</a></li>
    </ul>
</div>
<div class="wd">
    <h1>Welcome, <%= session.getAttribute("AdminName") %></h1>
    <h4>Siege's Libraries main aim is making sure our customers get the best, and you are doing just start. Good job Boss</h4>
    <div class="opt">
        <form action="index.jsp">
            <input type="submit" value="Log Out">
        </form>
    </div>
</div>
</body>
</html>

