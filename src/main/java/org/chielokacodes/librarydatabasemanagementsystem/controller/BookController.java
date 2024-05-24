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
import java.math.BigDecimal;
import java.util.List;

@WebServlet(name = "book", value = "/book")
public class BookController extends HttpServlet {
    private BookDao bookDao = new BookDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String viewProduct = req.getParameter("admin");
        String deleteProduct = req.getParameter("delete");

        ///////////////VIEW PRODUCT
        if (viewProduct!=null){
            List<Book> productList = bookDao.findAllBooks.get();
            req.setAttribute("book-list", productList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("viewbook.jsp");
            dispatcher.forward(req, resp);
        }


        ////////////////DELETE PRODUCT
        if (deleteProduct!=null){
            Book book = bookDao.deleteBookById.apply(Long.parseLong(deleteProduct));
            req.setAttribute("delete-book", book);
            RequestDispatcher dispatcher = req.getRequestDispatcher("viewbook.jsp");
            dispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminAddProduct = req.getParameter("admin");

        ///////////ADMIN ADD PRODUCT
        if (adminAddProduct!=null){
            String bookName = req.getParameter("book_name");
            String author = req.getParameter("author");
            String genre = req.getParameter("genre");
            String price = req.getParameter("price");
            Book product = new Book(bookName, author, genre, new BigDecimal(price));
            if (!bookDao.saveBook.apply(product)){
                List<Book> bookList = bookDao.findAllBooks.get();
                req.setAttribute("book-list", bookList);
                RequestDispatcher dispatcher = req.getRequestDispatcher("viewbook.jsp");
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
