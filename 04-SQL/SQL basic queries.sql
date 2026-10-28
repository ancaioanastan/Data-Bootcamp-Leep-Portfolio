-- Bring all customers info, inspect tables with * view all full tables
SELECT *
FROM customers;

SELECT *
FROM customers;

-- View only colums of intrest for each table
SELECT customername, city, country
FROM customers;

SELECT ProductID, ProductName 
FROM Products;

SELECT Country FROM Customers;

-- Name of unique, ditinct countries
SELECT DISTINCT Country 
FROM Customers;

-- Count unique number of countries, how many rows, total number expected
SELECT COUNT(DISTINCT country)
FROM customers;

-- get details from the Employees table
SELECT FirstName, LastName, BirthDate 
FROM employees;

-- retrieve information from the Customers table
SELECT CustomerName, address, city 
FROM customers;

-- all unique city names from the Suppliers table
SELECT DISTINCT City 
FROM Suppliers;

-- count the number of distinct cities in the Customers table, total number expected
SELECT COUNT(distinct city) 
FROM Customers;

SELECT *
FROM customers
WHERE country = 'UK';

SELECT * 
FROM Products
WHERE ProductID =1;

SELECT * 
FROM customers
WHERE city = 'London';

SELECT productname, price
FROM products
WHERE price >50;

SELECT * 
FROM Orders
WHERE OrderDate > '1996-07-30';

SELECT productname, price
FROM products
WHERE price !=10;

SELECT * 
FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

SELECT * 
FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';

SELECT * 
FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

SELECT customername, city, country
FROM customers
WHERE country = 'UK' and City != 'London';

SELECT *
FROM customers
WHERE customername LIKE '%a';

SELECT * 
FROM Customers
WHERE customername LIKE '%or%';

SELECT customername
FROM Customers
WHERE customername LIKE '%food%';

SELECT * 
FROM Employees 
WHERE FirstName LIKE '_n%';

SELECT *
FROM customers
WHERE country= 'UK' or country= 'Germany' or country= 'France';  

SELECT *
FROM customers
WHERE country in ('UK', 'Germany', 'France');

SELECT * 
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20 AND CategoryID NOT IN (1,2,3);
