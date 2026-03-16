SELECT *
FROM Customers
LIMIT 10;


SELECT CustomerID, CompanyName, City, Country
FROM Customers
LIMIT 10;

SELECT CustomerID, CompanyName, City, Country
FROM Customers
WHERE Country = "Germany";

SELECT CustomerID, CompanyName, City, Country
FROM Customers
WHERE Country = "Germany"
AND City = "Berlin";

SELECT CompanyName, Country
FROM Customers
WHERE Country IN ('Germany', 'France');


SELECT CustomerID, CompanyName, City, Country
FROM Customers
ORDER BY Country;

SELECT CustomerID, CompanyName, City, Country
FROM Customers
ORDER BY Country DESC;

SELECT CustomerID, CompanyName, City, Country
FROM Customers
ORDER BY Country, City;

SELECT CustomerID, CompanyName, City, Country
FROM Customers
WHERE Country = 'Germany'
ORDER BY City;