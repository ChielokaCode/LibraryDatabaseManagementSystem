package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chielokacodes.librarydatabasemanagementsystem.dao.AdminDao;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.LoginRequestDto;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.UserDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;
import org.chielokacodes.librarydatabasemanagementsystem.serviceImpl.UserServiceImpl;

import java.io.IOException;

@WebServlet(name = "adminLogin", value = "/admin-login")
public class AdminLoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminlogin = request.getParameter("adminlogin") == null ? null : request.getParameter("adminlogin");
        if (adminlogin != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminlogin.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminlogin.jsp");
            dispatcher.forward(request, response);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("adminreg.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserServiceImpl adminService = new UserServiceImpl();
        UserDto adminDto = new UserDto();
        AdminDao adminDao = new AdminDao();
        String editProduct = req.getParameter("edit");
        String adminAddProduct = req.getParameter("admin");
        String id = req.getParameter("id");


        ///LOGIN REQUESTS
        String adminlogin = req.getParameter("adminlogin") == null ? null : req.getParameter("adminlogin");
        if (adminlogin != null) {
            LoginRequestDto loggedInAdmin = new LoginRequestDto(req.getParameter("email"), req.getParameter("password"));
            User admin = adminDao.findAdmin.apply(loggedInAdmin);
            loggedInAdmin.setHashPassword(admin.getPassword());
            Boolean isVerified = adminService.verifyPassword.apply(loggedInAdmin);
            System.out.println(isVerified);
            if (isVerified) {
                HttpSession session = req.getSession();
                session.setAttribute("AdminRole", admin.getRole());
                session.setAttribute("AdminName", admin.getUsername());
                RequestDispatcher dispatcher = req.getRequestDispatcher("adminpage.jsp");
                dispatcher.forward(req, resp);
                System.out.println("Successfully Logged In");

            } else {
                System.out.println("Error: Incorrect password");
                RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp");
                dispatcher.forward(req, resp);
                System.out.println("Login details not found");
            }
        }else {
            // Email doesn't exist, handle accordingly
            System.out.println("Error: Email not found");
            RequestDispatcher dispatcher = req.getRequestDispatcher("adminreg.jsp");
            dispatcher.forward(req, resp);
        }
    }

}
