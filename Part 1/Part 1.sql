--Display a simple message
SELECT 'Hello, SQL World!';

--Retrieve specific columns:
SELECT regionid, regiondescription
FROM Regions;

--Find products costing $50 or more:Categories
SELECT productname ,unitprice
FROM Products
where unitprice >=50;


--Retrieve orders placed in 2016:
SELECT orderid, customerid, orderdate
FROM Orders
WHERE orderdate BETWEEN '2016-01-01' AND '2016-12-30'; 

--Find employees with names starting with 'A':
SELECT employeeid, firstname
FROM Employees
WHERE firstname LIKE 'A%'

--Search for products containing 'chocolate':
SELECT productid, productname ,unitprice
FROM Products
WHERE productname like '%chocolate%'

--List all unique customer countries:
SELECT DISTINCT country ,customerid
FROM Customers

--List medium-priced products (prices between $10 and $55):
SELECT productid, productname, unitprice
FROM Products
WHERE unitprice BETWEEN 10 and 55;

--Retrieve products in the high-price category:
SELECT productid, productname, unitprice
FROM Products
WHERE unitprice >=55;

--Check for customers without country information:
SELECT customerid, contactname ,country
from Customers
WHERE country IS NULL 

--List top 5 most expensive products:
SELECT productid, unitprice
FROM Products
WHERE unitprice >55
LIMIT 5


