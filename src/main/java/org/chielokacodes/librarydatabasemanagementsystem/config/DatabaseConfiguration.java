package org.chielokacodes.librarydatabasemanagementsystem.config;

import lombok.Getter;

@Getter
public class DatabaseConfiguration {
    private final String DB_URL = "jdbc:mysql://localhost:3306/libManagementDB";
    private final String DB_USERNAME = "root";
    private final String DB_PASSWORD = "";
    private final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
}