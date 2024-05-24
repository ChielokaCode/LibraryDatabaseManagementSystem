<%@ page import="java.util.List" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.model.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style>
        body {
            font-family: verdana, serif;
            color: black;
            background-color: white;
            background-size: cover;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
    <title>List of Authors</title>
</head>
<body>
<h1>List of Authors</h1>
<a href="author?user=view-authors">
    <button class="btn btn-success mt-3 mb-3">Refresh Authors
    </button>
</a>
<table>
    <thead>
    <tr>
        <th>Author</th>
        <th>Book Name</th>
        <th>Genre</th>
    </tr>
    </thead>
    <tbody>
    <%
        Object bookListObj = request.getAttribute("book-list");

        if (bookListObj instanceof List) {
            List<Book> bookList = (List<Book>) request.getAttribute("book-list");
            if (bookList != null) {
                for (Book book : bookList) {
    %>
    <tr>
        <td><%= book.getAuthor() %></td>
        <td><%= book.getBookName() %></td>
        <td><%= book.getGenre() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5">No Author available.</td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<br>

<a href="display.jsp">
    <button class="btn-update">Back</button>
</a>
</body>
</html>
