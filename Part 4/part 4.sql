--Count Products by Category:
SELECT 
categoryid
,COUNT( productname ) AS NumProducts
FROM Products
GROUP BY categoryid;

--Count Products by Supplier
SELECT
supplierid
,COUNT(productname) AS NumProducts
FROM Products
GROUP by supplierid;

--Customers by City and Country
SELECT
city
,country
,COUNT(customerid) as NumCustomers
FROM Customers
WHERE city NOT NULL
AND country not NULL
GROUP by city,country
ORDER by city,country;

--Orders by Employee and Ship Country:
SELECT 
employeeid
, shipcountry
, COUNT(orderid) AS NumOrders
FROM Orders
GROUP BY employeeid, shipcountry
ORDER BY employeeid, shipcountry;

--Products with Over 50 Orders:
SELECT productid
, COUNT(orderid) AS NumOrders
FROM "Order Details"
GROUP BY productid
HAVING NumOrders > 50
ORDER BY NumOrders DESC;

--Customers with Total Freight Charges > $41K:
SELECT 
customerid
, ROUND(SUM(freight), 2) AS TotalFreight
FROM Orders
GROUP BY customerid
HAVING TotalFreight > 41000
ORDER BY TotalFreight DESC;

--Average Order Delay per Customer:
SELECT 
customerid
, ROUND(AVG(julianday(shippeddate) - julianday(orderdate)), 1) AS AvgDelay
FROM Orders
GROUP BY customerid;

--Customers with Average Order Delay < 7 Days:
SELECT 
customerid
, ROUND(AVG(julianday(shippeddate) - julianday(orderdate)), 1) AS AvgDelay
FROM Orders
GROUP BY customerid
HAVING AvgDelay <7;

--Top-Selling Products by Order Count:
SELECT 
productid
, COUNT(orderid) AS OrderCount
FROM "Order Details"
GROUP BY productid
ORDER BY OrderCount DESC;

--Orders on Specific Dates (e.g., Nov 23, 2016):
SELECT 
employeeid
, shipcountry
, COUNT(orderid) AS NumOrders
FROM Orders
WHERE date(orderdate) = date('2016-11-23')
GROUP BY employeeid, shipcountry
ORDER BY employeeid, shipcountry;