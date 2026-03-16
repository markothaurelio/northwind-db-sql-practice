SELECT c.CompanyName,
       o.OrderID,
       p.ProductName,
       od.Quantity
FROM Customers c
JOIN Orders o
  ON c.CustomerID = o.CustomerID
JOIN "Order Details" od
  ON o.OrderID = od.OrderID
JOIN Products p
  ON od.ProductID = p.ProductID
ORDER BY c.CompanyName;

SELECT c.CompanyName,
        COUNT(o.OrderID) as total_orders
FROM Customers c
JOIN Orders o 
    ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName
ORDER BY total_orders DESC;

SELECT p.ProductID,
        p.ProductName,
        SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) as total_revenue
FROM Products p
JOIN "Order Details" od
ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY totaltotal_revenue_rev DESC;


SELECT c.CategoryID,
       c.CategoryName,
       SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS total_revenue
FROM Categories c
JOIN Products p
  ON c.CategoryID = p.CategoryID
JOIN "Order Details" od
  ON p.ProductID = od.ProductID
GROUP BY c.CategoryID, c.CategoryName
HAVING SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) > 50000
ORDER BY total_revenue DESC;

SELECT c.CustomerID,
       c.CompanyName,
       SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS total_revenue
FROM Customers c
JOIN Orders o
  ON c.CustomerID = o.CustomerID
JOIN "Order Details" od
  ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CompanyName
ORDER BY total_revenue DESC;


SELECT p.ProductID,
       p.ProductName,
       SUM(od.Quantity) AS total_units_sold
FROM Products p
JOIN "Order Details" od
  ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY total_units_sold DESC;