<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style type="text/css">
        body {
            font-family: Verdana, serif;
            color: black;
            background-color: white;
            background-size: cover;
        }
        table {
            background-color: #ECE5B6;
            width: 30%;
            margin: auto;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
<form action="book?admin=book" method="post" name="myform">
    <table>
        <tr>
            <th>Book Name</th>
            <td>
                <input type="text" name="book_name" required>
            </td>
        </tr>
        <tr>
            <th>Author</th>
            <td>
                <input type="text" name="author" required>
            </td>
        </tr>
        <tr>
            <th>Genre</th>
            <td>
                <input type="text" name="genre" required>
            </td>
        </tr>
        <tr>
            <th>Price</th>
            <td>
                <input type="text" name="price" required>
            </td>
        </tr>
        <tr>
            <th></th>
            <td>
                <button type="submit" name="add-book" value="Submit">Submit
                </button>
            </td>
        </tr>
    </table>
    <div style="text-align: center;">
        <h2><a href="viewbook.jsp">Back</a></h2>
    </div>
</form>
</body>
</html>

