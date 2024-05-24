package org.chielokacodes.librarydatabasemanagementsystem.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chielokacodes.librarydatabasemanagementsystem.dao.BookDao;
import org.chielokacodes.librarydatabasemanagementsystem.dao.PurchasesDao;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.model.Purchases;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@WebServlet(name = "purchases", value = "/purchases")
public class PurchasesController extends HttpServlet {
    private PurchasesDao purchasesDao = new PurchasesDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String viewPurchases = req.getParameter("admin");
        String deletePurchases = req.getParameter("delete");

        ///////////////VIEW PRODUCT
        if (viewPurchases!=null){
            List<Purchases> purchasesList = purchasesDao.findAllPurchases.get();
            req.setAttribute("purchases-list", purchasesList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("purchases.jsp");
            dispatcher.forward(req, resp);
        }


        ////////////////DELETE PRODUCT
        if (deletePurchases!=null){
            Purchases purchases = purchasesDao.deletePurchasesById.apply(Long.parseLong(deletePurchases));
            req.setAttribute("delete-purchases", purchases);
            RequestDispatcher dispatcher = req.getRequestDispatcher("purchases.jsp");
            dispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String adminAddPurchases = req.getParameter("admin");

        ///////////ADMIN ADD PRODUCT
        if (adminAddPurchases!=null){
            String fullName = req.getParameter("full_name");
            String userName = req.getParameter("user_name");
            String book = req.getParameter("book");
            String country = req.getParameter("country");
            String address = req.getParameter("address");
            Purchases purchases = new Purchases(fullName, userName, book, country, address);
            if (!purchasesDao.savePurchases.apply(purchases)){
                List<Purchases> purchasesList = purchasesDao.findAllPurchases.get();
                req.setAttribute("purchases-list", purchasesList);
                RequestDispatcher dispatcher = req.getRequestDispatcher("purchases.jsp");
                dispatcher.forward(req, resp);
            }
            else{
                req.setAttribute("error", "Could not add Purchases");
                RequestDispatcher dispatcher = req.getRequestDispatcher("adminpage.jsp");
                dispatcher.forward(req, resp);
            }
        }
    }
}
