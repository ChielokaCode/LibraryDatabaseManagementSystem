package org.chielokacodes.librarydatabasemanagementsystem.dao;

import org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.service.UserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.logging.Logger;

public class BookDao {
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


    public Function<Book, Boolean> saveBook = (book -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "INSERT INTO libManagementDB.books (book_name, author, genre, price) VALUES (?, ?, ?, ?)";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, book.getBookName());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getGenre());
            preparedStatement.setDouble(4, book.getPrice().doubleValue());

            return preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    });



    public Supplier<List<Book>> findAllBooks = () ->{
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        List<Book> productList = new ArrayList<>();
        String query = "SELECT * FROM libManagementDB.books";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Book book = Book.builder()
                        .id(resultSet.getLong("id"))
                        .bookName((resultSet.getString("book_name")))
                        .author(resultSet.getString("author"))
                        .genre(resultSet.getString("genre"))
                        .price(resultSet.getBigDecimal("price"))
                        .build();
                productList.add(book);
            }
            return productList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    };

    public Function<Long, Book> deleteBookById = (id) -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception: " + e.getMessage());
            throw new RuntimeException(e);
        }

        String query = "DELETE FROM libManagementDB.books WHERE id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Assuming you want to return the deleted book or handle the deletion in some way
        return new Book(); // You may need to adjust this based on your book class
    };
}
