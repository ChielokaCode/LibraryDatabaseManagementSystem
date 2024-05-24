package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chielokacodes.librarydatabasemanagementsystem.dao.UserDao;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.LoginRequestDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;
import org.chielokacodes.librarydatabasemanagementsystem.serviceImpl.UserServiceImpl;

import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "userLogin", value = "/user-login")

public class UserLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login") == null ? null : req.getParameter("login");
        String admin = req.getParameter("admin");

        if (admin != null && Objects.equals(admin, true)) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("adminlogin.jsp"); //login.jsp
            dispatcher.forward(req, resp);
        }
        if(login!=null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
            dispatcher.forward(req, resp);
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("register.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserServiceImpl userService = new UserServiceImpl();
        UserDao userDao = new UserDao();


//        ///////////LOGIN USER
        String login = req.getParameter("login") == null ? null : req.getParameter("login");

        if (login != null) {
            LoginRequestDto loggedInUser = new LoginRequestDto(req.getParameter("email"), req.getParameter("password"));
            User user = userDao.findUser.apply(loggedInUser);
            loggedInUser.setHashPassword(user.getPassword());
            Boolean isVerified = userService.verifyPassword.apply(loggedInUser);
            System.out.println(isVerified);
            if (isVerified) {
                HttpSession session = req.getSession();
                session.setAttribute("userID", user.getId());
                session.setAttribute("userName", user.getUsername());
//                req.setAttribute("product-list", new BookDao().findAllProducts.get()); ////////check
                RequestDispatcher dispatcher = req.getRequestDispatcher("display.jsp");
                dispatcher.forward(req, resp);
                System.out.println("Successfully Logged In");

            } else {
                System.out.println("Error: Incorrect password");
                RequestDispatcher dispatcher = req.getRequestDispatcher("register.jsp");
                dispatcher.forward(req, resp);
                System.out.println("Login details not found");
            }
        } else {
            // Email doesn't exist, handle accordingly
            System.out.println("Error: Email not found");
            RequestDispatcher dispatcher = req.getRequestDispatcher("register.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
