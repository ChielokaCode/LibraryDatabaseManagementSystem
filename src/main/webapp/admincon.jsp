<%--
  Created by IntelliJ IDEA.
  User: wikiwoo
  Date: 19/05/2024
  Time: 6:05 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.util.logging.Logger"%>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration" %>
<%


    String userid = request.getParameter("userid");
    session.setAttribute("userid", userid);
    String password = request.getParameter("password");

    DatabaseConfiguration configuration = new DatabaseConfiguration();
    Logger logger = Logger.getGlobal();

    try {
        Class.forName(configuration.getDB_DRIVER());
    } catch (ClassNotFoundException e) {
        logger.warning("MySQL Driver not found: " + e.getMessage());
    }

    try (Connection con = DriverManager.getConnection(configuration.getDB_URL(), configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
         PreparedStatement ps = con.prepareStatement("SELECT * FROM admin WHERE userid = ? AND password = ?")) {

        ps.setString(1, userid);
        ps.setString(2, password);

        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next() && rs.getString("password").equals(password) && rs.getString("userid").equals(userid)) {
                RequestDispatcher req = request.getRequestDispatcher("adminpage.jsp");
                req.include(request, response);
            } else {
                logger.info("Invalid password or username.");
            }
        }
    } catch (SQLException e) {
        logger.warning("SQL Exception: " + e.getMessage());
    }
%>
