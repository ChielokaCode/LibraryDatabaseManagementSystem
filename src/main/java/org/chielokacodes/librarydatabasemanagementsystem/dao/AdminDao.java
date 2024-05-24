package org.chielokacodes.librarydatabasemanagementsystem.dao;




import org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.LoginRequestDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;
import org.chielokacodes.librarydatabasemanagementsystem.service.UserService;

import java.sql.*;
import java.util.Properties;
import java.util.function.Function;
import java.util.logging.Logger;

public class AdminDao {
    private Logger logger = Logger.getGlobal();
    private Connection connection;


    public UserService connect = () -> {
        DatabaseConfiguration configuration = new DatabaseConfiguration();
        Class.forName(configuration.getDB_DRIVER());
        Properties properties = new Properties();

        properties.setProperty("User", configuration.getDB_URL());
        properties.setProperty("Password", configuration.getDB_PASSWORD());

        if(connection==null || connection.isClosed()){
            connection = DriverManager.getConnection(configuration.getDB_URL(),configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
        }
    };


    public Function<User, Boolean> saveAdmin = (admin -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "INSERT INTO libManagementDB.admin (name,password, email, phone, role) VALUES (?,?,?,?,'admin')";

        PreparedStatement preparedStatement = null;
        try
        {

            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, admin.getUsername());
            preparedStatement.setString(2, admin.getPassword());
            preparedStatement.setString(3, admin.getEmail());
            preparedStatement.setString(4, admin.getPhone());
            Boolean isGot = preparedStatement.execute();
            System.out.println(isGot);
            return isGot;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    });


    public Function<LoginRequestDto, User> findAdmin = (admin -> {
        try {
            connect.compile();
        }catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception" + e.getMessage());
            throw new RuntimeException("Error while finding user by email", e);
        }
        String query = "SELECT * FROM libManagementDB.admin WHERE email = ?";
        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, admin.getEmail());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                User admin1 = new User();
                admin1.setId(resultSet.getLong("id"));
                admin1.setUsername(resultSet.getString("name"));
                admin1.setEmail(resultSet.getString("email"));
                admin1.setPassword(resultSet.getString("password"));
                admin1.setPhone(resultSet.getString("phone"));

                return admin1;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null; // Return null if admin is not found
    });

}
