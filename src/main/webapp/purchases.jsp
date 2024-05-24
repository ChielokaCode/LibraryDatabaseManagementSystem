<%@ page import="java.util.List" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.model.Purchases" %>
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
    <title>View Purchases</title>
</head>
<body>
<h1>List of Purchases</h1>
<a href="purchases?admin=view-purchases">
    <button class="btn btn-success mt-3 mb-3">Refresh Purchases
    </button>
</a>
<table>
    <thead>
    <tr>
        <th>Full Name</th>
        <th>User Name</th>
        <th>Book Name</th>
        <th>Country</th>
        <th>Address</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
        Object purchasesListObj = request.getAttribute("purchases-list");

        if (purchasesListObj instanceof List) {
            List<Purchases> purchasesList = (List<Purchases>) request.getAttribute("purchases-list");
            if (purchasesList != null) {
                for (Purchases purchases : purchasesList) {
    %>
    <tr>
        <td><%= purchases.getFullName() %></td>
        <td><%= purchases.getUserName() %></td>
        <td><%= purchases.getBook() %></td>
        <td><%= purchases.getCountry() %></td>
        <td><%= purchases.getAddress() %></td>
        <td>
            <a href="purchases?delete=<%= purchases.getId() %>">
                <button class="btn-update">Delete</button>
            </a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5">No Purchases available.</td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<br>
<form action="addpurchase.jsp">
    <button class="btn-update" type="submit" value="Add Purchases">Add Purchases</button>
</form>

<a href="adminpage.jsp">
    <button class="btn-update">Back</button>
</a>
</body>
</html>
