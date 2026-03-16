SELECT c.CustomerID,
       c.CompanyName
FROM Customers c
LEFT JOIN Orders o
  ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

SELECT c.CustomerID,
        c.CompanyName
FROM Customers c
LEFT JOIN Orders o
  ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;