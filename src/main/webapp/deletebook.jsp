<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration" %>
<%@ page import="java.util.logging.Logger" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete book</title>
    <style>
        body {
            font-family: verdana, serif;
            color: black;
            background-color: white;
            background-size: cover;
        }
    </style>
</head>
<body>
<form action="deletebook.jsp" method="post">
    <table>
        <tr>
            <td>Enter book name To Delete</td>
            <td><input type="text" name="bname"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="delete" value="Delete"/></td>
        </tr>
    </table>
    <div style="text-align: center;">
        <h2><a href="adminpage.jsp">Back</a></h2>
    </div>
</form>
<%
    DatabaseConfiguration configuration = new DatabaseConfiguration();
    Logger logger = Logger.getGlobal();

    try {
        Class.forName(configuration.getDB_DRIVER());
        Connection con = DriverManager.getConnection(configuration.getDB_URL(), configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
        if (request.getParameter("delete") != null) {
            String bname = request.getParameter("bname");
            PreparedStatement ps = con.prepareStatement("DELETE FROM books WHERE book_name=?");
            ps.setString(1, bname);
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                logger.info("Data Deleted, click <a href=\"adminpage.jsp\">here</a> to continue survey.");
            } else {
                logger.info("No data found for deletion.");
            }
            con.close();
        }
    } catch (SQLException | ClassNotFoundException e) {
       logger.warning("Error occurred: " + e.getMessage());
    }
%>
</body>
</html>
