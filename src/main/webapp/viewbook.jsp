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
    <title>View Books</title>
</head>
<body>
<h1>List of Books</h1>
<a href="book?admin=view-product">
    <button class="btn btn-success mt-3 mb-3">Refresh Books
    </button>
</a>
<table>
    <thead>
    <tr>
        <th>Book Name</th>
        <th>Author</th>
        <th>Genre</th>
        <th>Price</th>
        <th>Actions</th>
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
        <td><%= book.getBookName() %></td>
        <td><%= book.getAuthor() %></td>
        <td><%= book.getGenre() %></td>
        <td><%= book.getPrice() %></td>
        <td>
            <a href="book?delete=<%= book.getId() %>">
                <button class="btn-update">Delete</button>
            </a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5">No books available.</td>
    </tr>
    <%
        }
    }
    %>
    </tbody>
</table>
<br>
<form action="addbook.jsp">
    <button class="btn-update" type="submit" value="Add Book">Add Book</button>
</form>

<a href="adminpage.jsp">
    <button class="btn-update">Back</button>
</a>
</body>
</html>
