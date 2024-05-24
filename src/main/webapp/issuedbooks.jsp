<%@ page import="java.util.List" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.model.IssuedBook" %>
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
    <title>View Issued Books</title>
</head>
<body>
<h1>List of IssuedBooks</h1>
<a href="issued-book?admin=view-issued-book">
    <button class="btn btn-success mt-3 mb-3">Refresh Issued Books
    </button>
</a>
<table>
    <thead>
    <tr>
        <th>Full Name</th>
        <th>Book Name</th>
        <th>User Name</th>
        <th>Issued Date</th>
        <th>Due Date</th>
        <th>Return Date</th>
    </tr>
    </thead>
    <tbody>
    <%
        Object issuedBookListObj = request.getAttribute("issuedBook-list");

        if (issuedBookListObj instanceof List) {
            List<IssuedBook> issuedBookList = (List<IssuedBook>) request.getAttribute("issuedBook-list");
            if (issuedBookList != null) {
                for (IssuedBook issuedBook : issuedBookList) {
    %>
    <tr>
        <td><%= issuedBook.getFullName() %></td>
        <td><%= issuedBook.getBook() %></td>
        <td><%= issuedBook.getUserName() %></td>
        <td><%= issuedBook.getIssuedDate() %></td>
        <td><%= issuedBook.getDueDate() %></td>
        <td><%= issuedBook.getReturned() %></td>

        <td>
            <a href="issued-book?delete=<%= issuedBook.getId() %>">
                <button class="btn-update">Delete</button>
            </a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5">No Issued Books available.</td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<br>
<form action="addissue.jsp">
    <button class="btn-update" type="submit" value="Add Book">Add Issued Book</button>
</form>

<a href="adminpage.jsp">
    <button class="btn-update">Back</button>
</a>
</body>
</html>
