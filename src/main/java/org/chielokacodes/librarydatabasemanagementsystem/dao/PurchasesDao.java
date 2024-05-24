package org.chielokacodes.librarydatabasemanagementsystem.dao;

import org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration;
import org.chielokacodes.librarydatabasemanagementsystem.model.Purchases;
import org.chielokacodes.librarydatabasemanagementsystem.service.UserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.logging.Logger;

public class PurchasesDao {
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


    public Function<Purchases, Boolean> savePurchases = (purchases -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "INSERT INTO libManagementDB.customer_shipment (full_name, user_name, book, country, address) VALUES (?, ?, ?, ?, ?)";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, purchases.getFullName());
            preparedStatement.setString(2, purchases.getUserName());
            preparedStatement.setString(3, purchases.getBook());
            preparedStatement.setString(4, purchases.getCountry());
            preparedStatement.setString(5, purchases.getAddress());

            return preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    });



    public Supplier<List<Purchases>> findAllPurchases = () ->{
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        List<Purchases> purchasesList = new ArrayList<>();
        String query = "SELECT * FROM libManagementDB.customer_shipment";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Purchases purchases = Purchases.builder()
                        .id(resultSet.getLong("id"))
                        .fullName((resultSet.getString("full_name")))
                        .userName(resultSet.getString("user_name"))
                        .book(resultSet.getString("book"))
                        .country(resultSet.getString("country"))
                        .address(resultSet.getString("address"))
                        .build();
                purchasesList.add(purchases);
            }
            return purchasesList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    };

    public Function<Long, Purchases> deletePurchasesById = (id) -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception: " + e.getMessage());
            throw new RuntimeException(e);
        }

        String query = "DELETE FROM libManagementDB.customer_shipment WHERE id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Assuming you want to return the deleted book or handle the deletion in some way
        return new Purchases(); // You may need to adjust this based on your book class
    };
}
