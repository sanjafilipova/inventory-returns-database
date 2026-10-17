
-- Inventory & Returns Management Database
-- Fictional sample data for portfolio demonstration

USE QuantigrationUpdates;

-- Sample customers
INSERT INTO Customers
(CustomerID, FirstName, LastName, StreetAddress,
 City, State, ZipCode, Telephone)
VALUES
(1, 'Alex', 'Morgan', '100 Example St',
 'Boston', 'Massachusetts', '02108', '555-0101'),
(2, 'Jordan', 'Taylor', '200 Sample Ave',
 'Little Rock', 'Arkansas', '72201', '555-0102'),
(3, 'Casey', 'Lee', '300 Demo Rd',
 'Portland', 'Oregon', '97201', '555-0103'),
(4, 'Riley', 'Parker', '400 Test Ln',
 'Framingham', 'Massachusetts', '01701', '555-0104'),
(5, 'Jamie', 'Rivera', '500 Fictional Blvd',
 'Woonsocket', 'Rhode Island', '02895', '555-0105');

-- Sample orders
INSERT INTO Orders
(OrderID, CustomerID, SKU, Description)
VALUES
(1001, 1, 'BAS-48-1C', 'Basic Switch 48 port'),
(1002, 2, 'BAS-24-1C', 'Basic Switch 24 port'),
(1003, 3, 'BAS-48-1C', 'Basic Switch 48 port'),
(1004, 4, 'ENT-48-1C', 'Enterprise Switch 48 port'),
(1005, 5, 'BAS-48-1C', 'Basic Switch 48 port');

-- Sample returns
INSERT INTO RMA
(RMAID, OrderID, Step, Status, Reason)
VALUES
(5001, 1001, 'Received', 'Pending', 'Defective'),
(5002, 1002, 'Inspected', 'Approved', 'Damaged'),
(5003, 1003, 'Received', 'Pending', 'Defective'),
(5004, 1005, 'Completed', 'Approved', 'Incorrect');
