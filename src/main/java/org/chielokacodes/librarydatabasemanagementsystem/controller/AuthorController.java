package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.BookDao;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "author", value = "/author")
public class AuthorController extends HttpServlet {
    private BookDao bookDao = new BookDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String viewProduct = req.getParameter("user");
        String deleteProduct = req.getParameter("delete");

        ///////////////VIEW PRODUCT
        if (viewProduct != null) {
            List<Book> productList = bookDao.findAllBooks.get();
            req.setAttribute("book-list", productList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("authors.jsp");
            dispatcher.forward(req, resp);
        }


        ////////////////DELETE PRODUCT
        if (deleteProduct != null) {
            Book book = bookDao.deleteBookById.apply(Long.parseLong(deleteProduct));
            req.setAttribute("delete-book", book);
            RequestDispatcher dispatcher = req.getRequestDispatcher("authors.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
