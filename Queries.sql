
-- 1. Show all customer orders
SELECT C.FirstName, C.LastName, O.OrderID, O.OrderDate, O.Status
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID;

-- 2. Top 3 selling products
SELECT TOP 3 P.ProductName, SUM(OI.Quantity) AS TotalSold
FROM OrderItems OI
JOIN Products P ON P.ProductID = OI.ProductID
GROUP BY P.ProductName
ORDER BY TotalSold DESC;

-- 3. Customers who haven't placed any orders
SELECT C.FirstName, C.LastName
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.CustomerID IS NULL;

-- 4. Products with low stock (less than 100)
SELECT ProductName, Stock
FROM Products
WHERE Stock < 100;

-- 5. Revenue per category
SELECT Cat.CategoryName, SUM(P.Price * OI.Quantity) AS TotalRevenue
FROM OrderItems OI
JOIN Products P ON OI.ProductID = P.ProductID
JOIN Categories Cat ON P.CategoryID = Cat.CategoryID
GROUP BY Cat.CategoryName;

-- 6. Orders with shipment tracking
SELECT O.OrderID, S.ShipmentDate, S.TrackingNumber
FROM Orders O
JOIN Shipments S ON O.OrderID = S.OrderID;
