<%--
  Created by IntelliJ IDEA.
  User: wikiwoo
  Date: 19/05/2024
  Time: 5:50 pm
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"--%>
<%--         pageEncoding="ISO-8859-1"%>--%>
<%--<%@page import="java.sql.*,java.util.*"%>--%>
<%--<%--%>
<%--    String username=request.getParameter("username");--%>
<%--    session.putValue("username",username);--%>
<%--    String password=request.getParameter("password");--%>
<%--    Class.forName("com.mysql.jdbc.Driver");--%>
<%--    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","PAPSman01");--%>
<%--    Statement st= con.createStatement();--%>
<%--    ResultSet rs= st.executeQuery("select * from user where username ='"+username+"' and password='"+password+"'");--%>
<%--    try{--%>
<%--        rs.next();--%>
<%--        if(rs.getString("password").equals(password)&&rs.getString("username").equals(username))--%>
<%--        {--%>
<%--            RequestDispatcher req = request.getRequestDispatcher("display.jsp");--%>
<%--            req.include(request, response);--%>
<%--        }--%>
<%--        else{--%>
<%--            out.println("Invalid password or username.");--%>
<%--        }--%>
<%--    }--%>
<%--    catch (Exception e) {--%>
<%--        e.printStackTrace();--%>
<%--    }--%>
<%--%>--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*, jakarta.servlet.*" %>
<%@ page import="org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration" %>
<%@ page import="java.util.logging.Logger" %>
<%
    String username = request.getParameter("username");
    session.setAttribute("username", username); // Use setAttribute instead of putValue
    String password = request.getParameter("password");

    DatabaseConfiguration configuration = new DatabaseConfiguration();
    Logger logger = Logger.getGlobal();
    // Use try-with-resources to automatically close resources
    try {

        Class.forName(configuration.getDB_DRIVER());
        try (Connection con = DriverManager.getConnection(configuration.getDB_URL(), configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
             PreparedStatement pst = con.prepareStatement("SELECT * FROM user WHERE username = ? AND password = ?")) {
            pst.setString(1, username);
            pst.setString(2, password);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next() && rs.getString("password").equals(password) && rs.getString("username").equals(username)) {
                    RequestDispatcher req = request.getRequestDispatcher("display.jsp");
                    req.forward(request, response); // Use forward instead of include
                } else {
                    logger.info("Invalid password or username.");
                }
            }
        }
    } catch (ClassNotFoundException | SQLException e) {
        logger.warning("SQL exception"+e.getMessage());
    }
%>
