package org.chielokacodes.librarydatabasemanagementsystem.dao;

import org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.model.Librarian;
import org.chielokacodes.librarydatabasemanagementsystem.service.UserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.logging.Logger;

public class LibrarianDao {
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


    public Function<Librarian, Boolean> saveLibrarian = (librarian -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "INSERT INTO libManagementDB.librarian (name, email, days, type) VALUES (?, ?, ?, ?)";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, librarian.getName());
            preparedStatement.setString(2, librarian.getEmail());
            preparedStatement.setString(3, librarian.getDays());
            preparedStatement.setString(4, librarian.getType());

            return preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    });



    public Supplier<List<Librarian>> findAllLibrarians = () ->{
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        List<Librarian> librarianList = new ArrayList<>();
        String query = "SELECT * FROM libManagementDB.librarian";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Librarian librarian = Librarian.builder()
                        .id(resultSet.getLong("id"))
                        .name((resultSet.getString("name")))
                        .email(resultSet.getString("email"))
                        .days(resultSet.getString("days"))
                        .type(resultSet.getString("type"))
                        .build();
                librarianList.add(librarian);
            }
            return librarianList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    };

    public Function<Long, Librarian> deleteLibrarianById = (id) -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception: " + e.getMessage());
            throw new RuntimeException(e);
        }

        String query = "DELETE FROM libManagementDB.librarian WHERE id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Assuming you want to return the deleted book or handle the deletion in some way
        return new Librarian(); // You may need to adjust this based on your book class
    };
}
