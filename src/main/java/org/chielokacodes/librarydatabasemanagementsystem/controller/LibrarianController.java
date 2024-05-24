package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.LibrarianDao;
import org.chielokacodes.librarydatabasemanagementsystem.model.Librarian;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "librarian", value = "/librarian")
public class LibrarianController extends HttpServlet {
    private LibrarianDao librarianDao = new LibrarianDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String viewLibrarian = req.getParameter("admin");
        String deleteLibrarian = req.getParameter("delete");

        ///////////////VIEW PRODUCT
        if (viewLibrarian!=null){
            List<Librarian> librarianList = librarianDao.findAllLibrarians.get();
            req.setAttribute("librarian-list", librarianList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("librarian.jsp");
            dispatcher.forward(req, resp);
        }


        ////////////////DELETE PRODUCT
        if (deleteLibrarian!=null){
            Librarian librarian = librarianDao.deleteLibrarianById.apply(Long.parseLong(deleteLibrarian));
            req.setAttribute("delete-librarian", librarian);
            RequestDispatcher dispatcher = req.getRequestDispatcher("librarian.jsp");
            dispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminAddLibrarian = req.getParameter("admin");

        ///////////ADMIN ADD PRODUCT
        if (adminAddLibrarian!=null){
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String days = req.getParameter("days");
            String type = req.getParameter("type");
            Librarian librarian = new Librarian(name, email, days, type);
            if (!librarianDao.saveLibrarian.apply(librarian)){
                List<Librarian> librarianList = librarianDao.findAllLibrarians.get();
                req.setAttribute("librarian-list", librarianList);
                RequestDispatcher dispatcher = req.getRequestDispatcher("librarian.jsp");
                dispatcher.forward(req, resp);
            }
            else{
                req.setAttribute("error", "Could not add Librarian");
                RequestDispatcher dispatcher = req.getRequestDispatcher("adminpage.jsp");
                dispatcher.forward(req, resp);
            }
        }
    }
}
