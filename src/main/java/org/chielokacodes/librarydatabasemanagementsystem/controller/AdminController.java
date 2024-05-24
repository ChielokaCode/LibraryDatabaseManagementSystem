package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.AdminDao;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.UserDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;
import org.chielokacodes.librarydatabasemanagementsystem.serviceImpl.UserServiceImpl;

import java.io.IOException;

@WebServlet(name = "adminReg", value = "/admin-reg")
public class AdminController extends HttpServlet {
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
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Displaying Admin information now...");

        UserServiceImpl adminService = new UserServiceImpl();
        UserDto adminDto = new UserDto();
        AdminDao adminDao = new AdminDao();
        String editProduct = req.getParameter("edit");
        String adminAddProduct = req.getParameter("admin");
        String id = req.getParameter("id");
        //User admin = new User(adminDto);



////         REGISTER REQUEST
        adminDto.setUsername(req.getParameter("name"));
        adminDto.setEmail(req.getParameter("email"));
        adminDto.setPassword(req.getParameter("password"));
        adminDto.setPhone(req.getParameter("phone"));

        Boolean isSaved = adminDao.saveAdmin.apply(new User(adminDto));
        System.out.println(isSaved);
        RequestDispatcher dispatcher = req.getRequestDispatcher("adminresult.jsp");
        dispatcher.forward(req, resp);

    }
}
