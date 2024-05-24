<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successfull</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style>
        body {
            color: #008040;
            background: linear-gradient(
                    rgba(0,0,0,0.65),rgba(0,0,0,0.65),rgba(0,0,0,0.38),rgba(0,0,0,0)
            )
            ,url('allbooks.jpg')no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<h1> Notice:</h1>
<p>We don't take money online due to customer satisfaction policies, so you pay on delivery.<br>
    We shall send your book to you in 10 to 12 days, depending on where you stay.<br>
    Please fill in your info, thank you.</p>
<form method="post" action="ship.jsp">
    <div style="text-align: center;">
        <table border="1" width="30%" cellpadding="5">
            <thead>
            <tr>
                <th colspan="2">Enter Shipping Information</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Full name</td>
                <td><input type="text" name="fname" /></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="uname" /></td>
            </tr>
            <tr>
                <td>Book</td>
                <td><input type="text" name="book" /></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><input type="text" name="country" /></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <label><input class="w3-radio" type="radio" name="gender" value="male" checked> Male</label>
                    <label><input class="w3-radio" type="radio" name="gender" value="female"> Female</label>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
            </tbody>
        </table>
    </div>
</form>
</body>
</html>

