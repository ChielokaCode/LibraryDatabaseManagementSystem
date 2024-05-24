SQL SCRIPT FOR CREATING DATABASE AND TABLES USING IN LIBRARY MAGNAGEMENT

Download TOMCAT 10.1.24 or any lower version

If you are using MySQL database, go in any type in this script below one by one

1 CREATE DATABASE libManagementDB;

2 USE libManagementDB;

3  CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) (100),
    phone VARCHAR(255) NOT NULL
);


4 CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    price DECIMAL(10, 2) NOT NULL
);

5 CREATE TABLE issued_books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    book VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    issue_date VARCHAR(255)NOT NULL,
    due_date VARCHAR(255)NOT NULL,
    returned VARCHAR(255)NOT NULL
);

6 CREATE TABLE librarian (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    days VARCHAR(255)NOT NULL,
    type VARCHAR(50) NOT NULL
);

7 CREATE TABLE customer_shipment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    book VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    address VARCHAR(255)NOT NULL
);
