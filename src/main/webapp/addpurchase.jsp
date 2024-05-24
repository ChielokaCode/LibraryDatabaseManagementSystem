<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style>
        body {
            font-family: Verdana;
            color: black;
            background-color: white;
            background-size: cover;
        }
    </style>
</head>
<body bgcolor="#ffffcc">
<form action="purchases?admin=purchases" method="post" name="myform">
    <table style="background-color: #ECE5B6;" width="30%">
        <tr>
            <th width="50%">Full Name</th>
            <td width="50%"><input type="text" name="full_name"></td>
        </tr>
        <tr>
            <th width="50%">User Name</th>
            <td width="50%"><input type="text" name="user_name"></td>
        </tr>
        <tr>
            <th width="50%">Book</th>
            <td width="50%"><input type="text" name="book"></td>
        </tr>
        <tr>
            <th width="50%">Country</th>
            <td width="50%"><input type="text" name="country"></td>
        </tr>
        <tr>
            <th width="50%">Address</th>
            <td width="50%"><input type="text" name="address"></td>
        </tr>
        <tr>
            <th></th>
            <td width="50%"><button type="submit" name="btn_add" value="Submit">Submit</button></td>
        </tr>
    </table>
    <div style="text-align: center;">
        <h2><a href="purchases.jsp">Back</a></h2>
    </div>
</form>
</body>
</html>
