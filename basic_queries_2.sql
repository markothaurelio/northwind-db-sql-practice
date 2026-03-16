SELECT COUNT(*) AS total_customers
FROM Customers;

SELECT MIN(UnitPrice), MAX(UnitPrice)
FROM Products;

SELECT Country, COUNT(*) AS customer_count
FROM Customers
GROUP BY Country
ORDER BY customer_count DESC;

SELECT Country, COUNT(*) AS customer_count
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5
ORDER BY customer_count DESC;

SELECT o.OrderID,
        o.OrderDate,
        c.CompanyName
FROM Orders o 
JOIN Customers c
ON o.CustomerID = c.CustomerID;

SELECT o.OrderID,
    p.ProductName,
    od.Quantity
FROM Orders o
JOIN "Order Details" od
ON o.OrderID = od.OrderID
JOIN Products p 
ON od.ProductID = p.ProductID;