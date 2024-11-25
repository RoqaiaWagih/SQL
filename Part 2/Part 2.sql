--Find clients in Italy but outside Rome:
SELECT customerid, city, country
FROM Customers
WHERE city!='Rome'
and country='Italy';

--Do we have clients in Madrid or Barcelona?:
SELECT customerid, city, country
FROM Customers
WHERE city in ('Madrid' , 'Barcelona');

--Retrieve products supplied by suppliers 3, 7, 8, and 10:
SELECT productname, supplierid
FROM Products
WHERE supplierid in (3,7,8,10);

--Find all clients with titles containing 'Manager':
SELECT companyname, contacttitle
FROM Customers
WHERE contacttitle LIKE '%Manager%'

--Postal codes starting with 2 and having 5 characters:
SELECT customerid,contactname, postalcode
from Customers
WHERE postalcode LIKE '2____'

--Find products related to 'Chef':
SELECT productid, productname
FROM Products
WHERE productname LIKE '%Chef%'

--Clients based in Austria or USA who are Sales Managers:
SELECT customerid, country ,contacttitle
FROM Customers
WHERE country in ('Austria','USA')
AND contacttitle='Sales Manager'

--Owners located outside France
SELECT companyname, country, contacttitle
FROM Customers
WHERE country != 'France'
AND contacttitle = 'Owner';

--List all clients in Europe sorted by country alphabetically:
SELECT companyname, country, region
FROM Customers
WHERE region LIKE '%Europe%'
ORDER BY country ASC;

--Available products sorted by the highest stock count first:
SELECT productname, unitsinstock
FROM Products
WHERE unitsinstock > 0
ORDER BY unitsinstock DESC;

--List all products in category 3 sorted by price (highest to lowest):
SELECT productname, unitsinstock, unitsonorder, unitprice
FROM Products
WHERE categoryid = 3
ORDER BY unitprice DESC;
