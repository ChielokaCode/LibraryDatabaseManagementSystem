package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.BookDao;
import org.chielokacodes.librarydatabasemanagementsystem.dao.IssuedBookDao;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.model.IssuedBook;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet(name = "issuedBook", value = "/issued-book")
public class IssuedBookController extends HttpServlet {
    private IssuedBookDao issuedBookDao = new IssuedBookDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String viewIssuedBook = req.getParameter("admin");
        String deleteIssuedBook = req.getParameter("delete");

        ///////////////VIEW PRODUCT
        if (viewIssuedBook!=null){
            List<IssuedBook> issuedBookList = issuedBookDao.findAllIssuedBooks.get();
            req.setAttribute("issuedBook-list", issuedBookList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("issuedbooks.jsp");
            dispatcher.forward(req, resp);
        }


        ////////////////DELETE PRODUCT
        if (deleteIssuedBook!=null){
            IssuedBook issuedBook = issuedBookDao.deleteIssuedBookById.apply(Long.parseLong(deleteIssuedBook));
            req.setAttribute("issued-book", issuedBookDao);
            RequestDispatcher dispatcher = req.getRequestDispatcher("issuedbooks.jsp");
            dispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminAddIssuedBook = req.getParameter("admin");

        ///////////ADMIN ADD PRODUCT
        if (adminAddIssuedBook!=null){
            String fullName = req.getParameter("full_name");
            String book = req.getParameter("book");
            String userName = req.getParameter("user_name");
            String issuedDate = req.getParameter("issued_date");
            String dueDate = req.getParameter("due_date");
            String returned = req.getParameter("returned");

            IssuedBook issuedBook = new IssuedBook(fullName, book, userName, issuedDate, dueDate, returned);
            if (!issuedBookDao.saveIssuedBook.apply(issuedBook)){
                List<IssuedBook> issuedBookList = issuedBookDao.findAllIssuedBooks.get();
                req.setAttribute("issuedBook-list", issuedBookList);
                RequestDispatcher dispatcher = req.getRequestDispatcher("issuedbooks.jsp");
                dispatcher.forward(req, resp);
            }
            else{
                req.setAttribute("error", "Could not add product");
                RequestDispatcher dispatcher = req.getRequestDispatcher("adminpage.jsp");
                dispatcher.forward(req, resp);
            }
        }
    }
}
