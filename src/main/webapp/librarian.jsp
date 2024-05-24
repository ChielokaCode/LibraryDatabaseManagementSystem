<%@ page import="java.util.List" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.model.Librarian" %>
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
    <title>View Librarians</title>
</head>
<body>
<h1>List of Librarians</h1>
<a href="librarian?admin=view-librarian">
    <button class="btn btn-success mt-3 mb-3">Refresh Librarian List
    </button>
</a>
<br>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Days</th>
        <th>Type</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
        Object librarianListObj = request.getAttribute("librarian-list");

        if (librarianListObj instanceof List) {
            List<Librarian> librarianList = (List<Librarian>) request.getAttribute("librarian-list");
            if (librarianList != null) {
                for (Librarian librarian : librarianList) {
    %>
    <tr>
        <td><%= librarian.getName() %></td>
        <td><%= librarian.getEmail() %></td>
        <td><%= librarian.getDays() %></td>
        <td><%= librarian.getType() %></td>
        <td>
            <a href="librarian?delete=<%= librarian.getId() %>">
                <button class="btn-update">Delete</button>
            </a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5">No Librarian available.</td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<br>
<form action="addlibrarian.jsp">
    <button class="btn-update" type="submit" value="Add Book">Add Librarian</button>
</form>

<a href="adminpage.jsp">
    <button class="btn-update">Back</button>
</a>
</body>
</html>
