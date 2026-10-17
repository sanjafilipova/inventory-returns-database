
-- Inventory & Returns Management Database
-- Database setup and table updates

USE QuantigrationUpdates;

-- Rename Customers to Collaborators
RENAME TABLE Customers TO Collaborators;

-- Rename CustomerID in both related tables
ALTER TABLE Collaborators
CHANGE CustomerID CollaboratorID INT;

ALTER TABLE Orders
CHANGE CustomerID CollaboratorID INT;

-- Verify updated table structure
SHOW TABLES;

DESCRIBE Collaborators;
DESCRIBE Orders;
DESCRIBE RMA;
