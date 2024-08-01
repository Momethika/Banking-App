 
CREATE DATABASE BankingApp;
use BankingApp;
CREATE TABLE Admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    mobile_no VARCHAR(15) NOT NULL,
    email_id VARCHAR(100) NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    initial_balance DOUBLE NOT NULL,
    date_of_birth DATE NOT NULL,
    id_proof VARCHAR(100) NOT NULL,
    account_no VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount DOUBLE NOT NULL,
    type VARCHAR(20) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

insert into Admin values('11','mome','pree23');