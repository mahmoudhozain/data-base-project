
-- Insert categories
INSERT INTO Categories (CategoryName) VALUES
('Electronics'), ('Books'), ('Clothing'), ('Home & Kitchen');

-- Insert customers
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address) VALUES
('Ahmed', 'Ali', 'ahmed@example.com', '01012345678', 'Cairo, Egypt'),
('Sara', 'Hassan', 'sara@example.com', '01087654321', 'Giza, Egypt');

-- Insert products
INSERT INTO Products (ProductName, Price, Stock, CategoryID) VALUES
('Smartphone', 8999.99, 50, 1),
('Novel - Fiction', 149.50, 120, 2),
('T-Shirt', 99.99, 200, 3),
('Blender', 450.00, 80, 4);

-- Insert orders
INSERT INTO Orders (CustomerID, OrderDate, Status) VALUES
(1, '2025-06-01', 'Delivered'),
(2, '2025-06-03', 'Shipped');

-- Insert order items
INSERT INTO OrderItems (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 3);

-- Insert shipments
INSERT INTO Shipments (OrderID, ShipmentDate, TrackingNumber) VALUES
(1, '2025-06-02', 'TRK123456'),
(2, '2025-06-04', 'TRK654321');
