-- Retrieve all customer details alongside all order details
SELECT *
FROM customers
INNER JOIN orders
ON customers.customerid = orders.customerid;

-- Select specific customer and order columns using explicit table aliases
SELECT customers.customername, customers.CustomerID, orders.orderid, customers.city, customers.country 
FROM customers
INNER JOIN orders
ON customers.customerid = orders.customerid;

-- Retrieve order and customer details (explicitly specifying table for duplicate columns)
SELECT customername, orders.CustomerID, orderid, city, country 
FROM customers
INNER JOIN orders
ON customers.customerid = orders.customerid;

-- Find the supplier name for each product
SELECT productname, suppliername
FROM products
INNER JOIN suppliers
ON products.supplierid = suppliers.supplierid;

-- Retrieve order IDs alongside customer names and shipping company names
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM Orders
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Shippers 
ON Orders.ShipperID = Shippers.ShipperID;

-- Retrieve all products supplied by 'G'day, Mate'
SELECT productname, suppliername
FROM suppliers
INNER JOIN products
ON products.supplierid = suppliers.supplierid
WHERE suppliername = 'G''day, Mate';

-- Retrieve products supplied by 'G'day, Mate' ordered alphabetically by product name
SELECT productname, suppliername
FROM suppliers
INNER JOIN products
ON products.supplierid = suppliers.supplierid
WHERE suppliername = 'G''day, Mate'
ORDER BY productname;

-- List employees who handled each order along with the order date
SELECT orders.OrderID, orders.orderdate, employees.EmployeeID, employees.firstname, employees.lastname 
FROM orders 
INNER JOIN employees 
ON orders.employeeid = employees.EmployeeID;

-- List all orders shipped specifically by 'Speedy Express'
SELECT shippers.shipperid, shippername, orderid, orderdate 
FROM shippers 
INNER JOIN orders 
ON shippers.shipperID = orders.shipperID
WHERE shippername = 'Speedy Express';

-- Display all products alongside their respective category names
SELECT p.ProductID, p.ProductName, c.CategoryName 
FROM Products AS p 
JOIN Categories AS c 
ON p.CategoryID = c.CategoryID;

-- List each product alongside the quantity ordered in order details
SELECT productname, quantity
FROM products
INNER JOIN order_details
ON order_details.productID = products.productID;

-- Show all employees and any associated orders (including employees without orders)
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees 
ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- Display all customers and their orders (including customers without orders)
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Find customers who have never placed an order using LEFT JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
WHERE orderid IS NULL;

-- Find customers who have never placed an order using RIGHT JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Orders
RIGHT JOIN Customers 
ON Customers.CustomerID = Orders.CustomerID
WHERE orderid IS NULL;

-- Produce a Cartesian product combining every customer with every order
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;

-- Produce a Cartesian product combining every product with every shipper
SELECT productname, shippername
FROM products 
CROSS JOIN shippers;

-- Calculate the total quantity sold for each product
SELECT p.productname, SUM(od.quantity) AS totalquantity
FROM products AS p
INNER JOIN order_details AS od
ON od.productID = p.productID
GROUP BY p.productname;

-- Count the total number of customers per country
SELECT country, COUNT(customerid) AS totalcustomers
FROM customers
GROUP BY country;

-- Count total orders handled by each shipping company
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders 
FROM Orders
LEFT JOIN Shippers 
ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

-- Calculate total revenue per product sorted from highest to lowest
SELECT p.ProductName, SUM(od.Quantity * p.Price) AS TotalSales
FROM Order_Details AS od
JOIN Products AS p 
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY SUM(od.Quantity * p.Price) DESC;

-- Count the number of customers located in each city sorted by count
SELECT city, COUNT(customerid) AS totalcustomers
FROM customers
GROUP BY city
ORDER BY COUNT(customerid) DESC;

-- Calculate total product quantities sold within each category
SELECT CategoryName, SUM(quantity) AS totalproducts
FROM products AS p
JOIN categories AS c
ON p.categoryid = c.categoryid
JOIN order_details AS od
ON p.ProductID = od.ProductID
GROUP BY CategoryName;

-- Count the total number of orders handled by each employee
SELECT e.FirstName, e.LastName, COUNT(OrderID) AS totalorders
FROM employees AS e 
JOIN orders AS o
ON e.employeeid = o.employeeid
GROUP BY e.FirstName, e.LastName;