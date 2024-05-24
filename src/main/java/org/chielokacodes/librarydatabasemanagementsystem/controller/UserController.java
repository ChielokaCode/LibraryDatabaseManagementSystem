package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.BookDao;
import org.chielokacodes.librarydatabasemanagementsystem.dao.UserDao;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.UserDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;
import org.chielokacodes.librarydatabasemanagementsystem.serviceImpl.UserServiceImpl;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "userReg", value = "/user-reg")
public class UserController extends HttpServlet {
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
        System.out.println("Displaying user information now...");
        UserServiceImpl userService = new UserServiceImpl();
        UserDto userDto = new UserDto();
        UserDao userDao = new UserDao();


        ////////////REGISTER USER
        userDto.setUsername(req.getParameter("name"));
        userDto.setEmail(req.getParameter("email"));
        userDto.setPassword(req.getParameter("password"));
        userDto.setPhone(req.getParameter("phone"));

        Boolean isSaved = userDao.saveUser.apply(new User(userDto));
        System.out.println(isSaved);
        RequestDispatcher dispatcher = req.getRequestDispatcher("result.jsp");
        dispatcher.forward(req, resp);

    }


}
