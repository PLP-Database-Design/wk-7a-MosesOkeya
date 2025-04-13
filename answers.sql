# Achieving 1NF (First Normal Form)


-- 1NF Transformation
SELECT 
    OrderID,
    CustomerName,
    TRIM(value) AS Product
FROM 
    ProductDetail,
    LATERAL STRING_SPLIT(Products, ',');


# SQL to Create the Two 2NF Tables:

-- Create Orders table
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Create OrderItems table
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;

