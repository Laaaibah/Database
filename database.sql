create database ecommerce_dataa
use ecommerce_dataa;

CREATE TABLE Sellers (
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(255),
    SellerEmail VARCHAR(255),
    StoreDescription TEXT,
    ContactNumber VARCHAR(15)
);


INSERT INTO Sellers (SellerID, SellerName, SellerEmail, StoreDescription, ContactNumber) VALUES
(1, 'Electro Hub', 'electrohub@pk.com', 'Your one-stop electronics store', '0300-1234567'),
(2, 'Trendy Threads', 'trendythreads@pk.com', 'Fashionable clothing and accessories', '0321-7654321'),
(3, 'Desi Delights', 'sales@desidelights.com', 'Authentic Pakistani snacks and sweets', '0333-5678901'),
(4, 'Tech Innovations', 'info@techinnovations.com', 'Latest gadgets and tech products', '0345-6789012'),
(5, 'Home Comforts', 'service@homecomforts.com', 'Quality home furnishings and decor', '0356-7890123'),
(6, 'Bookworm Haven', 'contact@bookwormhaven.com', 'Books across all genres', '0367-8901234'),
(7, 'Sports World', 'sales@sportsworld.com', 'All sports equipment and apparel', '0378-9012345'),
(8, 'Beauty Essentials', 'support@beautyessentials.com', 'Skincare and beauty products', '0389-0123456'),
(9, 'Kids Kingdom', 'info@kidskingdom.com', 'Toys and educational games for kids', '0390-1234567'),
(10, 'Autozone Pakistan', 'service@autozone.pk', 'Quality auto parts and accessories', '0400-2345678'),
(11, 'Fitness Planet', 'sales@fitnessplanet.com', 'Fitness gear and equipment', '0411-3456789'),
(12, 'Office Mart', 'contact@officemart.pk', 'Office supplies and essentials', '0422-4567890'),
(13, 'Smart Kitchen', 'support@smartkitchen.pk', 'Modern kitchen appliances', '0433-5678901'),
(14, 'Adventure Gear', 'sales@adventuregear.pk', 'Camping and outdoor equipment', '0444-6789012'),
(15, 'Pet Shop Pakistan', 'info@petshoppk.com', 'Pet supplies and accessories', '0455-7890123'),
(16, 'Gaming Haven', 'service@gaminghaven.pk', 'Latest video games and consoles', '0466-8901234'),
(17, 'Travel Essentials', 'support@travelessentials.pk', 'Travel accessories and gear', '0477-9012345'),
(18, 'Elegant Jewels', 'sales@elegantjewels.pk', 'Handcrafted jewelry and accessories', '0488-0123456'),
(19, 'Music Station', 'info@musicstation.pk', 'Musical instruments and equipment', '0499-1234567'),
(20, 'Garden Delight', 'service@gardendelight.pk', 'Gardening tools and supplies', '0500-2345678');


SELECT * FROM Sellers;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Price DECIMAL(10,2),
    Category VARCHAR(100),
    SellerID INT,
    StockQuantity INT,
    FOREIGN KEY (SellerID) REFERENCES Sellers(SellerID)
);

INSERT INTO Products (ProductID, Name, Description, Price, Category, SellerID, StockQuantity) VALUES
(1, 'Samsung Galaxy S21', 'Latest model smartphone', 119999.99, 'Electronics', 1, 50),
(2, 'Bridal Dress', 'Beautifully crafted bridal dress with intricate embroidery', 24999.99, 'Fashion', 2, 30),
(3, 'Pure Organic Honey', 'Raw organic honey sourced from local farms', 999.99, 'Food', 3, 100),
(4, 'Bluetooth Earbuds', 'High-quality wireless earbuds with noise cancellation', 4999.99, 'Electronics', 4, 75),
(5, 'High-Power Vacuum Cleaner', 'Efficient vacuum cleaner for home use', 21999.99, 'Home Appliances', 5, 20),
(6, 'Science Fiction Novel', 'Best-selling sci-fi novel by a renowned author', 499.99, 'Books', 6, 200),
(7, 'Running Shoes', 'Comfortable and durable running shoes', 3999.99, 'Sports', 7, 150),
(8, 'Anti-Aging Face Cream', 'Nourishing cream for youthful skin', 1999.99, 'Beauty', 8, 40),
(9, 'Educational Lego Set', 'Creative Lego set for kids', 2499.99, 'Toys', 9, 60),
(10, 'Brake Pads', 'High-performance brake pads for vehicles', 2999.99, 'Auto Parts', 10, 80),
(11, 'Treadmill', 'Advanced treadmill for home workouts', 59999.99, 'Fitness', 11, 10),
(12, 'Ergonomic Office Chair', 'Comfortable chair for long work hours', 12999.99, 'Office Supplies', 12, 25),
(13, 'Smart Refrigerator', 'Wi-Fi-enabled fridge with smart features', 149999.99, 'Home Appliances', 13, 5),
(14, 'Camping Tent', 'Durable and waterproof camping tent', 7999.99, 'Outdoor', 14, 15),
(15, 'Durable Dog Collar', 'Strong and stylish collar for pets', 799.99, 'Pet Supplies', 15, 100),
(16, 'Gaming Console', 'Latest gaming console with 4K support', 64999.99, 'Gaming', 16, 30),
(17, 'Travel Backpack', 'Spacious and lightweight travel backpack', 2999.99, 'Travel', 17, 50),
(18, 'Gold Necklace', 'Elegant gold necklace with traditional design', 19999.99, 'Jewelry', 18, 20),
(19, 'Acoustic Guitar', 'High-quality acoustic guitar for musicians', 9999.99, 'Music', 19, 40),
(20, 'Electric Lawn Mower', 'Eco-friendly electric lawn mower', 34999.99, 'Garden Tools', 20, 25);



SELECT * FROM Products;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255)
);

INSERT INTO Customers (CustomerID, Name, Email, Password) VALUES
(1, 'Ali Khan', 'ali.khan@gmail.com', 'AliKhan@2024!'),
(2, 'Sara Ahmed', 'sara.ahmed@yahoo.com', 'BiryaniLover123'),
(3, 'Bilal Malik', 'bilal.malik@outlook.com', 'BilalDhoond123!'),
(4, 'Fatima Noor', 'fatima.noor@gmail.com', 'Fatima@2024!'),
(5, 'Hassan Ali', 'hassan.ali@gmail.com', 'HassanHai123'),
(6, 'Ayesha Hussain', 'ayesha.hussain@outlook.com', 'Ayesha@2024'),
(7, 'Omar Farooq', 'omar.farooq@gmail.com', 'OmarGhalib#2024'),
(8, 'Zainab Tariq', 'zainab.tariq@gmail.com', 'ZainabCool#123'),
(9, 'Usman Ahmed', 'usman.a@yahoo.com', 'Usman@Ghar123'),
(10, 'Nida Bashir', 'nida.bashir@gmail.com', 'Nida@2024!'),
(11, 'Shayan Khan', 'shayan.khan@outlook.com', 'ShayanTikka123'),
(12, 'Muneeb Shah', 'muneeb.shah@gmail.com', 'Muneeb@2024'),
(13, 'Amina Javed', 'amina.javed@outlook.com', 'Amina@Tandoor123'),
(14, 'Rehan Malik', 'rehan.malik@gmail.com', 'Rehan@2024!'),
(15, 'Sana Iqbal', 'sana.iqbal@gmail.com', 'Sana@2024!'),
(16, 'Farhan Hussain', 'farhan.hussain@gmail.com', 'FarhanChaat123'),
(17, 'Naila Raza', 'naila.raza@yahoo.com', 'Naila@2024!'),
(18, 'Kashif Shah', 'kashif.shah@gmail.com', 'KashifDost123'),
(19, 'Areeba Khan', 'areeba.khan@gmail.com', 'Areeba@2024!'),
(20, 'Ahsan Raza', 'ahsan.raza@outlook.com', 'AhsanBiryani@2024');

SELECT * FROM Customers;


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderNumber VARCHAR(20),
    CreationTime DATETIME,
    TotalAmount DECIMAL(10,2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (OrderID, OrderNumber, CreationTime, TotalAmount, CustomerID) VALUES
(1, 'ORD001', '2024-10-12 10:00:00', 8999.99, 1),
(2, 'ORD002', '2024-10-12 11:00:00', 2999.99, 1),
(3, 'ORD003', '2024-10-12 12:00:00', 4599.99, 1),
(4, 'ORD004', '2024-10-12 13:00:00', 2499.99, 1),
(5, 'ORD005', '2024-10-12 14:00:00', 1599.99, 1),
(6, 'ORD006', '2024-10-12 15:00:00', 6799.99, 1),
(7, 'ORD007', '2024-10-12 16:00:00', 799.99, 7),
(8, 'ORD008', '2024-10-12 17:00:00', 1299.99, 8),
(9, 'ORD009', '2024-10-12 18:00:00', 2799.99, 9),
(10, 'ORD010', '2024-10-12 19:00:00', 3499.99, 11),
(11, 'ORD011', '2024-10-12 20:00:00', 4899.99, 11),
(12, 'ORD012', '2024-10-12 21:00:00', 999.99, 12),
(13, 'ORD013', '2024-10-12 22:00:00', 3999.99, 14),
(14, 'ORD014', '2024-10-12 23:00:00', 1599.99, 14),
(15, 'ORD015', '2024-10-13 09:00:00', 2499.99, 14),
(16, 'ORD016', '2024-10-13 10:00:00', 3499.99, 14),
(17, 'ORD017', '2024-10-13 11:00:00', 5999.99, 14),
(18, 'ORD018', '2024-10-13 12:00:00', 2899.99, 14),
(19, 'ORD019', '2024-10-13 13:00:00', 3599.99, 19),
(20, 'ORD020', '2024-10-13 14:00:00', 2499.99, 20);



SELECT * FROM Orders;

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    Quantity INT,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderItems (OrderItemID, Quantity, OrderID, ProductID) VALUES
(1, 2, 1, 1),
(2, 1, 1, 2),
(3, 3, 1, 3),
(4, 1, 4, 4),
(5, 4, 5, 5),
(6, 2, 5, 6),
(7, 1, 5, 7),
(8, 5, 8, 8),
(9, 1, 9, 9),
(10, 2, 10, 10),
(11, 1, 11, 11),
(12, 1, 12, 12),
(13, 3, 13, 13),
(14, 4, 14, 14),
(15, 1, 15, 15),
(16, 2, 16, 16),
(17, 3, 17, 17),
(18, 1, 18, 18),
(19, 1, 19, 19),
(20, 5, 20, 20)

SELECT * FROM OrderItems;



CREATE TABLE ShoppingCart (
    CartID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO ShoppingCart (CartID, CustomerID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);


SELECT * FROM ShoppingCart;



CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10,2),
    CreationTimestamp DATETIME,
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Payments (PaymentID, PaymentMethod, Amount, CreationTimestamp, OrderID) VALUES
(1, 'Credit Card', 8999.99, '2024-10-12 10:05:00', 1),
(2, 'Bank Transfer', 2999.99, '2024-10-12 11:05:00', 2),
(3, 'Mobile Wallet', 4599.99, '2024-10-12 12:05:00', 3),
(4, 'Credit Card', 2499.99, '2024-10-12 13:05:00', 4),
(5, 'PayPal', 1599.99, '2024-10-12 14:05:00', 5),
(6, 'Credit Card', 6799.99, '2024-10-12 15:05:00', 6),
(7, 'Bank Transfer', 799.99, '2024-10-12 16:05:00', 7),
(8, 'Mobile Wallet', 1299.99, '2024-10-12 17:05:00', 8),
(9, 'Credit Card', 2799.99, '2024-10-12 18:05:00', 9),
(10, 'Credit Card', 3499.99, '2024-10-12 19:05:00', 10),
(11, 'Bank Transfer', 4899.99, '2024-10-12 20:05:00', 11),
(12, 'Credit Card', 999.99, '2024-10-12 21:05:00', 12),
(13, 'Mobile Wallet', 3999.99, '2024-10-12 22:05:00', 13),
(14, 'PayPal', 1599.99, '2024-10-12 23:05:00', 14),
(15, 'Credit Card', 2499.99, '2024-10-13 09:05:00', 15),
(16, 'Bank Transfer', 3499.99, '2024-10-13 10:05:00', 16),
(17, 'Mobile Wallet', 5999.99, '2024-10-13 11:05:00', 17),
(18, 'Credit Card', 2899.99, '2024-10-13 12:05:00', 18),
(19, 'Bank Transfer', 3599.99, '2024-10-13 13:05:00', 19),
(20, 'PayPal', 2499.99, '2024-10-13 14:05:00', 20);



SELECT * FROM Payments;


CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ReviewText TEXT,
    Rating INT,
    ProductID INT,
    CustomerID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Reviews (ReviewID, ReviewText, Rating, ProductID, CustomerID) VALUES
(1, 'Great product!', 5, 1, 1),
(2, 'Not bad', 4, 1, 2),
(3, 'Highly recommend', 5, 3, 2),
(4, 'Worth the price', 4, 3, 4),
(5, 'Excellent quality', 5, 1, 4),
(6, 'Average performance', 3, 6, 6),
(7, 'Poor customer service', 2, 7, 7),
(8, 'Good but expensive', 4, 2, 8),
(9, 'Fast delivery', 5, 9, 9),
(10, 'Not satisfied', 2, 10, 10),
(11, 'Perfect for my needs', 5, 11, 1),
(12, 'Could be better', 3, 12, 12),
(13, 'Amazing product', 5, 13, 13),
(14, 'Good value for money', 4, 14, 14),
(15, 'Excellent purchase', 5, 15, 15),
(16, 'Would buy again', 5, 16, 16),
(17, 'Faulty product', 1, 17, 17),
(18, 'Decent quality', 3, 18, 18),
(19, 'Very happy with it', 5, 19, 19),
(20, 'Poor packaging', 2, 20, 20);

SELECT * FROM Reviews;


CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY,
    AddressLine1 VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(10),
    Country VARCHAR(100),
    IsShippingAddress BIT,
    IsBillingAddress BIT,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Addresses (AddressID, AddressLine1, City, State, ZipCode, Country, IsShippingAddress, IsBillingAddress, CustomerID) VALUES
(1, '123 Street 1', 'Karachi', 'SD', '74200', 'Pakistan', 1, 1, 1),
(2, '456 Main Boulevard', 'Lahore', 'PB', '54000', 'Pakistan', 1, 0, 2),
(3, '789 G-10 Markaz', 'Islamabad', 'ICT', '44000', 'Pakistan', 1, 1, 3),
(4, '101 G.T. Road', 'Faisalabad', 'PB', '38000', 'Pakistan', 1, 0, 4),
(5, '202 Mall Road', 'Peshawar', 'KP', '25000', 'Pakistan', 1, 1, 5),
(6, '303 Gulberg', 'Multan', 'PB', '60000', 'Pakistan', 0, 1, 6),
(7, '404 Civic Centre', 'Hyderabad', 'SD', '70000', 'Pakistan', 1, 0, 7),
(8, '505 Allama Iqbal Road', 'Sialkot', 'PB', '39300', 'Pakistan', 1, 1, 8),
(9, '606 Awan Town', 'Rawalpindi', 'ICT', '46000', 'Pakistan', 1, 0, 9),
(10, '707 Jinnah Road', 'Quetta', 'BL', '87300', 'Pakistan', 0, 1, 10),
(11, '808 Shalimar Park', 'Gujranwala', 'PB', '52200', 'Pakistan', 1, 1, 11),
(12, '909 Kashmir Road', 'Murree', 'GB', '47100', 'Pakistan', 1, 0, 12),
(13, '1010 Kakul Road', 'Abbottabad', 'KP', '22000', 'Pakistan', 1, 1, 13),
(14, '1111 Sukkur Bypass', 'Sukkur', 'SD', '65200', 'Pakistan', 0, 1, 14),
(15, '1212 Bahawalpur Road', 'Bahawalpur', 'PB', '63100', 'Pakistan', 1, 1, 15),
(16, '1313 Peshawar Road', 'Gilgit', 'GB', '15100', 'Pakistan', 1, 0, 16),
(17, '1414 Chaman Road', 'Skardu', 'GB', '19000', 'Pakistan', 1, 1, 17),
(18, '1515 Muzaffarabad Road', 'Muzaffarabad', 'AJK', '46000', 'Pakistan', 1, 0, 18),
(19, '1616 Gojra Road', 'Jhelum', 'PB', '49600', 'Pakistan', 1, 1, 19),
(20, '1717 Sargodha Road', 'Sargodha', 'PB', '40100', 'Pakistan', 0, 1, 20);



SELECT * FROM Addresses;



CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    UnitCost DECIMAL(10,2),
    ReorderThreshold INT,
    LastStockUpdate DATETIME,
    QuantityInStock INT,
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Inventory (InventoryID, UnitCost, ReorderThreshold, LastStockUpdate, QuantityInStock, ProductID) VALUES
(1, 5000.00, 10, '2024-10-11 09:00:00', 50, 1),
(2, 1500.00, 20, '2024-10-11 09:30:00', 100, 2),
(3, 300.00, 15, '2024-10-11 10:00:00', 200, 3),
(4, 400.00, 25, '2024-10-11 10:30:00', 150, 4),
(5, 1200.00, 30, '2024-10-11 11:00:00', 80, 5),
(6, 100.00, 20, '2024-10-11 11:30:00', 250, 6),
(7, 600.00, 10, '2024-10-11 12:00:00', 60, 7),
(8, 200.00, 30, '2024-10-11 12:30:00', 120, 8),
(9, 350.00, 15, '2024-10-11 13:00:00', 100, 9),
(10, 500.00, 20, '2024-10-11 13:30:00', 90, 10),
(11, 2000.00, 10, '2024-10-11 14:00:00', 40, 11),
(12, 1800.00, 5, '2024-10-11 14:30:00', 30, 12),
(13, 2200.00, 15, '2024-10-11 15:00:00', 25, 13),
(14, 1700.00, 25, '2024-10-11 15:30:00', 200, 14),
(15, 900.00, 20, '2024-10-11 16:00:00', 300, 15),
(16, 850.00, 25, '2024-10-11 16:30:00', 500, 16),
(17, 4000.00, 10, '2024-10-11 17:00:00', 30, 17),
(18, 3000.00, 15, '2024-10-11 17:30:00', 45, 18),
(19, 2500.00, 20, '2024-10-11 18:00:00', 60, 19),
(20, 1000.00, 25, '2024-10-11 18:30:00', 120, 20);


SELECT * FROM Inventory
--3
--Retrieve total sales amount for each customer

SELECT c.CustomerID AS CustomerID,
SUM(o.TotalAmount) AS TotalSales
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID; 

/*It is significant for identifying high-value customers, which can help in targeted marketing efforts,
customer loyalty programs, or personalized services.*/


-- List products that are low in stock
SELECT p.ProductID, p.Name, i.QuantityInStock
FROM Products p
JOIN Inventory i ON p.ProductID = i.ProductID
WHERE i.QuantityInStock < 30;

/*This query identifies products with stock quantities below a certain threshold. 
It's crucial for inventory management, ensuring that popular items are restocked promptly to avoid lost sales.*/



--Count the number of orders placed within the last month
SELECT COUNT(o.OrderID) AS TotalOrders
FROM Orders o
WHERE o.CreationTime >= DATEADD(month, -1, GETDATE());

/*This query counts the number of orders placed in the last month, providing insights into recent sales performance.
It is significant for tracking sales trends over time*/



--Retrieve average product ratings for each product
SELECT p.ProductID,p.Name ,AVG(r.Rating) AS AverageRating
FROM Products p
JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.Name;
/*This query calculates the average rating for each product based on customer reviews. 
-- It is essential for evaluating product performance and customer satisfaction. 
-- Retailers can use this data to highlight top-rated products and improve less popular ones*/




--4
SELECT TOP 5 c.CustomerID, c.Name, SUM(o.TotalAmount) AS Total
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
 
--5
SELECT p.ProductID, p.Name, AVG(r.Rating) AS AverageRating
FROM Products p
JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY AverageRating DESC;
 
--6
SELECT CustomerID, CAST(CreationTime AS DATE) AS PurchaseDate, COUNT(OrderID) AS PurchaseCount
FROM Orders
GROUP BY CustomerID, CAST(CreationTime AS DATE)
HAVING COUNT(OrderID) > 1;

--7
SELECT Category, SUM(Price) AS TotalRevenue
FROM Products
GROUP BY Category
ORDER BY TotalRevenue DESC;

--8
SELECT c.CustomerID, c.Name
FROM Customers c
LEFT JOIN Reviews r ON c.CustomerID = r.CustomerID
WHERE r.CustomerID IS NULL;

--9
SELECT ProductID, Name, StockQuantity
FROM Products
WHERE StockQuantity < (SELECT AVG(StockQuantity) FROM Products);


--10
SELECT O.CustomerID, C.Name, COUNT(O.OrderID) AS TotalOrders
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
GROUP BY O.CustomerID, C.Name
HAVING COUNT(O.OrderID) > 5;

--11
SELECT TOP 3 O.OrderID, O.OrderNumber, O.CreationTime, O.TotalAmount
FROM Orders O
WHERE O.CustomerID = 1
ORDER BY O.CreationTime DESC

--12
SELECT C.Name, O.CustomerID, COUNT(DISTINCT S.SellerID) AS UniqueSellers
FROM Orders O
JOIN OrderItems OI ON O.OrderID = OI.OrderID
JOIN Products P ON OI.ProductID = P.ProductID
JOIN Sellers S ON P.SellerID = S.SellerID
JOIN Customers C ON O.CustomerID = C.CustomerID
GROUP BY C.Name, O.CustomerID
HAVING COUNT(DISTINCT S.SellerID) >= 2;

--13
SELECT C.CustomerID, C.Name, O.OrderID, O.CreationTime
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.CreationTime >= DATEADD(DAY, -30, GETDATE());


--14
SELECT c.Name
FROM Customers AS c
INNER JOIN orders AS o ON c.CustomerID= o.CustomerID
INNER JOIN OrderItems AS oi ON o.OrderID = oi.OrderID
INNER JOIN Products AS p ON oi.ProductID = p.ProductID
GROUP BY c.CustomerID, c.Name
HAVING COUNT(DISTINCT p.category) = (SELECT COUNT(DISTINCT category) FROM Products);

--15
SELECT S.SellerName, SUM(OI.Quantity) AS ProductsSold
FROM Sellers S
JOIN Products P ON S.SellerID = P.SellerID
JOIN OrderItems OI ON P.ProductID = OI.ProductID
GROUP BY S.SellerName;


--16
SELECT TOP 5 P.ProductID, P.Name, SUM(OI.Quantity) AS TotalSales
FROM Products P
JOIN OrderItems OI ON P.ProductID = OI.ProductID
JOIN Orders O ON O.OrderID = OI.OrderID
WHERE O.CreationTime >= DATEADD(MONTH, -1, GETDATE())
GROUP BY P.ProductID, P.Name
ORDER BY TotalSales DESC

--17
SELECT TOP 5 O.OrderID, O.OrderNumber, O.CreationTime, C.CustomerID, C.Name, OI.ProductID, OI.Quantity
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN OrderItems OI ON O.OrderID = OI.OrderID
ORDER BY O.CreationTime DESC


--18
SELECT C.CustomerID, C.Name, COUNT(DISTINCT P.Category) AS TotalCategories
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN OrderItems OI ON O.OrderID = OI.OrderID
JOIN Products P ON OI.ProductID = P.ProductID
GROUP BY C.CustomerID, C.Name
HAVING COUNT(DISTINCT P.Category) = (SELECT COUNT(*) FROM Products);


--19
SELECT p.Name, p.category, i.QuantityInStock
FROM Products as p
LEFT JOIN Reviews as r ON p.ProductID = r.ProductID
LEFT JOIN Inventory as i ON p.ProductID = i.ProductID
WHERE r.ReviewText IS NULL AND i.QuantityInStock > 0
GROUP BY p.Name, p.category, i.QuantityInStock;


--20
SELECT TOP 3 p.ProductID,p.Name, AVG(r.Rating) AS AverageRating, STRING_AGG(CAST(r.ReviewText AS nvarchar(max)), '; ') AS ReviewTexts
FROM Products AS p
LEFT JOIN Reviews AS r ON p.ProductID = r.ProductID
LEFT JOIN OrderItems AS o ON p.ProductID = o.ProductID
LEFT JOIN Orders AS ord ON o.OrderID = ord.OrderID
GROUP BY p.ProductID, p.Name;


--21
SELECT c.CustomerID, c.Name,o.OrderID, o.CreationTime, a.IsShippingAddress 
FROM Orders AS o
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
LEFT JOIN Addresses AS a ON c.CustomerID = a.CustomerID
ORDER BY c.CustomerID, o.OrderID;

--22
SELECT p.category, COUNT(p.ProductID) AS TotalProducts, COALESCE(SUM(oi.Quantity * p.Price), 0) AS TotalRevenue
FROM Products AS p
LEFT JOIN OrderItems AS oi ON p.ProductID = oi.ProductID
GROUP BY p.category
ORDER BY TotalRevenue DESC;



--23
SELECT p.ProductID, p.Name, p.Category,
COALESCE(SUM(oi.Quantity), 0) AS OrderQuantity,
COALESCE(SUM(p.Price), 0) AS OrderPrice,
COALESCE(SUM(p.Price * oi.Quantity), 0) AS TotalRevenue
FROM Products AS p
LEFT JOIN OrderItems AS oi ON p.ProductID = oi.ProductID
WHERE p.Category = 'Electronics'
--AND (oi.Quantity BETWEEN 5 AND 10 OR oi.Quantity IS NULL)
GROUP BY p.ProductID, p.Name, p.Category
ORDER BY TotalRevenue DESC;

--24
SELECT p.Category, COUNT(oi.ProductID) AS TotalProductsSold
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.Category
HAVING COUNT(oi.ProductID) > 1
ORDER BY TotalProductsSold; 

--25
SELECT c.CustomerID,c.Name  ,COUNT(o.OrderID) AS TotalOrders
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
HAVING COUNT(o.OrderID) > 5
ORDER BY TotalOrders DESC;


