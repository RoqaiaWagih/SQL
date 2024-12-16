--Find clients not in Madrid or based outside Spain:
SELECT 
contactname
,city
,country
FROM Customers
WHERE NOT (city ='Madris' AND country ='Spain');

--Exclude products supplied by suppliers 2, 4, and 6:
SELECT 
productid
,productname
,categoryid
,supplierid
FROM Products
WHERE not supplierid in(2,4,6);

--Alternative method to exclude suppliers:
SELECT
productid
, productname
, supplierid
, categoryid
FROM Products
WHERE supplierid != 2
AND supplierid != 4
AND supplierid != 6;

--List orders for product 42, sorted by total price (highest to lowest):
SELECT 
  orderid
 ,discount
 ,unitprice * quantity * (1 - discount) AS totalPrice
FROM "Order Details"
WHERE productid = 42
ORDER BY totalPrice DESC;

--Calculate the difference in days between order date and shipped date:
SELECT julianday(orderdate) - julianday(shippeddate) AS DaysDifference
FROM Orders;

--Compute employee age from their birthdate:
SELECT 
  firstname,
  title,
  date('2024-11-20') - birthdate AS Age
FROM Employees
ORDER BY Age DESC;

--Total units sold and total sales for product 25:
SELECT 
sum( quantity ) as unit_sold
,sum( quantity * unitprice * ( 1 - discount ) ) as total_sales
 FROM "Order Details"
 WHERE productid =25;
 
--Count of distinct regions in the Customers table:
SELECT COUNT(DISTINCT region) AS DistinctRegions
FROM Customers;

--Create a report for category 5 products: average price, total stock, max orders:
SELECT
  ROUND(AVG(unitprice)) AS AvgPrice,
  SUM(unitsinstock * unitprice) AS TotalStockValue,
  MAX(unitsonorder) AS MaxOrders
FROM Products
WHERE categoryid = 5;