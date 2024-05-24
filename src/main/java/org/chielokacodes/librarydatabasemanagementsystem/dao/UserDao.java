package org.chielokacodes.librarydatabasemanagementsystem.dao;

import org.chielokacodes.librarydatabasemanagementsystem.config.DatabaseConfiguration;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.LoginRequestDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.Book;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;
import org.chielokacodes.librarydatabasemanagementsystem.service.UserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.logging.Logger;

public class UserDao {
    private final Logger logger = Logger.getLogger(UserDao.class.getName());
    private Connection connection;

    public UserService connect = () -> {
        Class.forName("com.mysql.cj.jdbc.Driver");

        DatabaseConfiguration configuration = new DatabaseConfiguration();
        Properties properties = new Properties();

        properties.setProperty("User", configuration.getDB_URL());
        properties.setProperty("Password", configuration.getDB_PASSWORD());

        if(connection==null || connection.isClosed()){
            connection = DriverManager.getConnection(configuration.getDB_URL(),configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
        }
    };


    ///REGISTER USER
    public Function<User, Boolean> saveUser = (user -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "INSERT INTO libManagementDB.users (name,password,email,phone, role) VALUES (?,?,?,?,'user')";

        PreparedStatement preparedStatement = null;
        try
        {

            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPhone());
            Boolean isGot = preparedStatement.execute();
            System.out.println(isGot);
            return isGot;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    });

    ///LOGIN USER
    public Function<LoginRequestDto, User> findUser = (user -> {
        try {
            connect.compile();
        }catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception" + e.getMessage());
            throw new RuntimeException("Error while finding user by email", e);
        }
        String query = "SELECT * FROM libManagementDB.users WHERE email = ?";
        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user.getEmail());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return User.builder()
                        .id(resultSet.getLong("id"))
                        .username(resultSet.getString("name"))
                        .email(resultSet.getString("email"))
                        .password(resultSet.getString("password"))
                        .build();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null; // Return null if user is not found
    });

    //FIND ALL USERS

    public Supplier<List<User>> findAllUsers = () ->{
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        List<User> userList = new ArrayList<>();
        String query = "SELECT * FROM libManagementDB.users";

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                User user = User.builder()
                        .id(resultSet.getLong("id"))
                        .username((resultSet.getString("name")))
//                        .password(resultSet.getString("password"))
                        .email(resultSet.getString("email"))
                        .phone(resultSet.getString("phone"))
                        .build();
                userList.add(user);
            }
            return userList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    };


    //DELETE USER BY ID

    public Function<Long, User> deleteUserById = (id) -> {
        try {
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL exception: " + e.getMessage());
            throw new RuntimeException(e);
        }

        String query = "DELETE FROM libManagementDB.users WHERE id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Assuming you want to return the deleted book or handle the deletion in some way
        return new User(); // You may need to adjust this based on your book class
    };


}
