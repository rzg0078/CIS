
CREATE TABLE Customer (
    CustomerID INT,
    Product VARCHAR(100),
    Price VARCHAR(100)
);
INSERT INTO Customer (CustomerID, Product, Price)
VALUES
    (1111, 'A', 100),
    (1111, 'B', 200),
    (1111, 'C', 200),
    (1111, 'D', 200),
    (1112, 'B', 100),
    (1112, 'D', 300),
    (1112, 'E', 400),
    (1112, 'A', 100),
    (1112, 'A', 100);
select * from Customer;
    
SELECT CustomerID, GROUP_CONCAT(Product) AS Products, GROUP_CONCAT(Price) AS Prices
FROM Customer
WHERE CustomerID IN (1111, 1112)
GROUP BY CustomerID;

SELECT CustomerID, Product, Price
FROM Customer
WHERE CustomerID IN (1111, 1112);
    