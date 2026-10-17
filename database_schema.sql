
-- Inventory & Returns Management Database
-- Based on DAD 220 coursework at Southern New Hampshire University
-- Database: QuantigrationUpdates

CREATE DATABASE IF NOT EXISTS QuantigrationUpdates;

USE QuantigrationUpdates;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    StreetAddress VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(25),
    ZipCode VARCHAR(10),
    Telephone VARCHAR(15),
    PRIMARY KEY (CustomerID)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    SKU VARCHAR(20),
    Description VARCHAR(75),
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

-- Create RMA table
CREATE TABLE RMA (
    RMAID INT,
    OrderID INT,
    Step VARCHAR(50),
    Status VARCHAR(15),
    Reason VARCHAR(15),
    PRIMARY KEY (RMAID),
    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID)
);

-- Verify that the tables were created
SHOW TABLES;

DESCRIBE Customers;
DESCRIBE Orders;
DESCRIBE RMA;
