<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration" %>
<%@ page import="java.util.logging.Logger" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Issued Book</title>
    <style>
        body {
            font-family: verdana, serif;
            color: red;
            background: linear-gradient(
                    rgba(0,0,0,0.65),rgba(0,0,0,0.65),rgba(0,0,0,0.38),rgba(0,0,0,0)
            )
            ,url('newloginpic.jpg') no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<form action="deleteissue.jsp" method="post">
    <table>
        <tr>
            <td>Enter issued Book To Delete</td>
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
        Class.forName(configuration.getDB_DRIVER()); // Using updated Driver class name
        Connection con = DriverManager.getConnection(configuration.getDB_URL(), configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());

        if (request.getParameter("delete") != null) {
            String bname = request.getParameter("bname");
            PreparedStatement ps = con.prepareStatement("DELETE FROM issued_books WHERE book = ?");
            ps.setString(1, bname);
            ps.executeUpdate();
            con.close();
            logger.info("Data Deleted, click back to continue survey.");
        }
    } catch (ClassNotFoundException | SQLException e) {
        logger.warning(e.getMessage());
    }
%>
</body>
</html>

