
-- Inventory & Returns Management Database
-- DAD 220 - SQL Data Analysis
-- Southern New Hampshire University

USE QuantigrationUpdates;


-- QUERY 1: Analyze returns by state
-- Identify states with the highest number of returns.

SELECT
    c.State,
    COUNT(*) AS ReturnCount
FROM Collaborators c
INNER JOIN Orders o
    ON c.CollaboratorID = o.CollaboratorID
INNER JOIN RMA r
    ON o.OrderID = r.OrderID
GROUP BY c.State
ORDER BY ReturnCount DESC;


-- QUERY 2: Analyze returns by product
-- Calculate each product's share of all returns.

SELECT
    o.SKU,
    o.Description,
    COUNT(*) AS ReturnCount,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM RMA),
        2
    ) AS ReturnPercentage
FROM Orders o
INNER JOIN RMA r
    ON o.OrderID = r.OrderID
GROUP BY o.SKU, o.Description
ORDER BY ReturnPercentage DESC;


-- QUERY 3: Count orders from Framingham, Massachusetts

SELECT
    COUNT(*) AS OrderCount
FROM Collaborators c
INNER JOIN Orders o
    ON c.CollaboratorID = o.CollaboratorID
WHERE c.City = 'Framingham'
    AND c.State = 'Massachusetts';


-- QUERY 4: Count customers in Woonsocket, Rhode Island

SELECT
    COUNT(*) AS RecordCount
FROM Collaborators
WHERE City = 'Woonsocket'
    AND State = 'Rhode Island';
