package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.UserDao;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "customer", value = "/customer")
public class CustomerController extends HttpServlet {
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String viewUser = req.getParameter("admin");
        String deleteUser = req.getParameter("delete");

        ///////////////VIEW PRODUCT
        if (viewUser!=null){
            List<User> userList = userDao.findAllUsers.get();
            req.setAttribute("user-list", userList);
            RequestDispatcher dispatcher1 = req.getRequestDispatcher("customers.jsp");
            dispatcher1.forward(req, resp);
        }


        ////////////////DELETE PRODUCT
        if (deleteUser!=null){
            User user = userDao.deleteUserById.apply(Long.parseLong(deleteUser));
            req.setAttribute("delete-user", user);
            RequestDispatcher dispatcher2 = req.getRequestDispatcher("customers.jsp");
            dispatcher2.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminAddUser = req.getParameter("admin");

        ///////////ADMIN ADD PRODUCT
        if (adminAddUser!=null){
            String userName = req.getParameter("name");
            String password = req.getParameter("password");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            User user = new User(userName,password, email, phone);
            if (!userDao.saveUser.apply(user)){
                List<User> userList = userDao.findAllUsers.get();
                req.setAttribute("user-list", userList);
                RequestDispatcher dispatcher = req.getRequestDispatcher("customers.jsp");
                dispatcher.forward(req, resp);
            }
            else{
                req.setAttribute("error", "Could not add User");
                RequestDispatcher dispatcher = req.getRequestDispatcher("adminpage.jsp");
                dispatcher.forward(req, resp);
            }
        }
    }
}
