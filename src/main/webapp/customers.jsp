<%@ page import="java.util.List" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.model.User" %>
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
    <title>View Users</title>
</head>
<body>
<h1>List of Users</h1>
<a href="customer?admin=view-users">
    <button class="btn btn-success mt-3 mb-3">Refresh Users
    </button>
</a>
<table>
    <thead>
    <tr>
        <th>User Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
        Object userListObj = request.getAttribute("user-list");

        if (userListObj instanceof List) {
            List<User> userList = (List<User>) request.getAttribute("user-list");
            if (userList != null) {
                for (User user : userList) {
    %>
    <tr>
        <td><%= user.getUsername() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getPhone() %></td>
        <td>
            <a href="customer?delete=<%= user.getId() %>">
                <button class="btn-update">Delete</button>
            </a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5">No User available.</td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<br>
<form action="adduser.jsp">
    <button class="btn-update" type="submit" value="Add User">Add User</button>
</form>

<a href="adminpage.jsp">
    <button class="btn-update">Back</button>
</a>
</body>
</html>
