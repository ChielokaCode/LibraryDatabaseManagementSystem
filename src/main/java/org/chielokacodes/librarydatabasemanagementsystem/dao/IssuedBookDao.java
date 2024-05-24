package org.chielokacodes.librarydatabasemanagementsystem.dao;

import org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.model.IssuedBook;
import org.chielokacodes.librarydatabasemanagementsystem.service.UserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.logging.Logger;

public class IssuedBookDao {
    private Connection connection;
    private Logger logger = Logger.getGlobal();

    public UserService connect = () -> {
        Class.forName("com.mysql.cj.jdbc.Driver");
        DatabaseConfiguration configuration = new DatabaseConfiguration();
        Properties properties = new Properties();
        properties.setProperty("User", configuration.getDB_URL());
        properties.setProperty("Password", configuration.getDB_PASSWORD());
        if (connection==null|| connection.isClosed()){
            connection = DriverManager.getConnection(configuration.getDB_URL(), configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
        }
    };


    public Function<IssuedBook, Boolean> saveIssuedBook = (issuedBook -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "INSERT INTO libManagementDB.issued_books (full_name, book, user_name, issued_date, due_date, returned) VALUES (?, ?, ?, ?, ?, ?)";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, issuedBook.getFullName());
            preparedStatement.setString(2, issuedBook.getBook());
            preparedStatement.setString(3, issuedBook.getUserName());
            preparedStatement.setString(4, issuedBook.getIssuedDate());
            preparedStatement.setString(5, issuedBook.getDueDate());
            preparedStatement.setString(6, issuedBook.getReturned());


            return preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    });



    public Supplier<List<IssuedBook>> findAllIssuedBooks = () ->{
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        List<IssuedBook> issuedBookList = new ArrayList<>();
        String query = "SELECT * FROM libManagementDB.issued_books";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                IssuedBook issuedBook = IssuedBook.builder()
                        .id(resultSet.getLong("id"))
                        .fullName((resultSet.getString("full_name")))
                        .book(resultSet.getString("book"))
                        .userName(resultSet.getString("user_name"))
                        .issuedDate(resultSet.getString("issued_date"))
                        .dueDate(resultSet.getString("due_date"))
                        .returned(resultSet.getString("returned"))
                        .build();
                issuedBookList.add(issuedBook);
            }
            return issuedBookList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    };

    public Function<Long, IssuedBook> deleteIssuedBookById = (id) -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception: " + e.getMessage());
            throw new RuntimeException(e);
        }

        String query = "DELETE FROM libManagementDB.issued_books WHERE id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Assuming you want to return the deleted book or handle the deletion in some way
        return new IssuedBook(); // You may need to adjust this based on your book class
    };
}
