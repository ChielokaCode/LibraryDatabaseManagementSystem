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
        body{
            font-family: verdana, serif;
            color:red;
            background: linear-gradient(
                    rgba(0,0,0,0.65),rgba(0,0,0,0.65),rgba(0,0,0,0.38),rgba(0,0,0,0)
            )
            ,url('newloginpic.jpg')no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<form action="deletemember.jsp" method="post">
    <table>
        <tr>
            <td>Enter User name To Delete</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="delete" value="Delete"/></td>
        </tr>
    </table>
    <center>
        <h2><a href="adminpage.jsp">Back</a></h2>
    </center>
</form>
<%

    DatabaseConfiguration configuration = new DatabaseConfiguration();
    Logger logger = Logger.getGlobal();
    try {
        Class.forName(configuration.getDB_DRIVER());


        if (request.getParameter("delete") != null) {
            String username = request.getParameter("username");

            try (Connection con = DriverManager.getConnection(configuration.getDB_URL(), configuration.getDB_USERNAME(), configuration.getDB_PASSWORD())) {
                String sql = "DELETE FROM user WHERE username = ?";
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, username);
                    ps.executeUpdate();
                }
            }
            logger.info("Data Deleted, click back to continue survey.");
        }
    } catch (SQLException | ClassNotFoundException e) {
        logger.warning("SQL exception"+e.getMessage());
    }
%>
</body>
</html>
