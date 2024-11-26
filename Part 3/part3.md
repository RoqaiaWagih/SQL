# Part 3: Advanced SQL - Filtering, Math Operations, and Aggregation

Welcome to **Part 3** of the SQL exercise series! This segment focuses on applying advanced filtering techniques, performing mathematical operations, and using aggregation functions to analyze data effectively.

---

## Prerequisites

Before diving into this part, ensure you are familiar with the following:
- SQL syntax basics (SELECT, WHERE, etc.).
- Aggregation functions (COUNT, SUM, AVG, MIN, MAX).
- Logical operators (AND, OR, NOT).
- Math operations (+, -, *, /, %).

---

## Topics Covered

### 1. Filtering with Conditions
Learn to exclude or include specific data using `NOT`, `AND`, `OR`, `IN`, and `BETWEEN`.

### 2. Mathematical Operations
Use math operators to manipulate numerical data directly in SQL queries.

### 3. Aggregation Functions
Summarize data using SQL functions such as `SUM`, `AVG`, and `COUNT`.

---

## Exercises

### **1. Filtering with Advanced Conditions**
- **Find clients not in Madrid or based outside Spain**:
  ```sql
  SELECT companyname, country, city
  FROM Customers
  WHERE NOT (city = 'Madrid' AND country = 'Spain');
  ```

- **Exclude products supplied by suppliers 2, 4, and 6**:
  ```sql
  SELECT productname, supplierid, categoryid
  FROM Products
  WHERE NOT supplierid IN (2, 4, 6);
  ```

- **Alternative method to exclude suppliers**:
  ```sql
  SELECT productname, supplierid, categoryid
  FROM Products
  WHERE supplierid != 2
  AND supplierid != 4
  AND supplierid != 6;
  ```

---

### **2. Math Operations**
Perform calculations directly within SQL queries to extract actionable insights.

- **List orders for product 42, sorted by total price (highest to lowest)**:
  ```sql
  SELECT 
    orderid,
    discount,
    unitprice * quantity * (1 - discount) AS totalPrice
  FROM "Order Details"
  WHERE productid = 42
  ORDER BY totalPrice DESC;
  ```

- **Calculate the difference in days between order date and shipped date**:
  ```sql
  SELECT julianday(orderdate) - julianday(shippeddate) AS DaysDifference
  FROM Orders;
  ```

- **Compute employee age from their birthdate**:
  ```sql
  SELECT 
    firstname,
    title,
    date('2024-11-20') - birthdate AS Age
  FROM Employees
  ORDER BY Age DESC;
  ```

---

### **3. Aggregation and Summarization**
Summarize data to reveal patterns and trends.

- **Total units sold and total sales for product 25**:
  ```sql
  SELECT 
    SUM(quantity) AS UnitsSold,
    SUM(unitprice * quantity * (1 - discount)) AS TotalSales
  FROM "Order Details"
  WHERE productid = 25;
  ```

- **Count of distinct regions in the Customers table**:
  ```sql
  SELECT COUNT(DISTINCT region) AS DistinctRegions
  FROM Customers;
  ```

- **Create a report for category 5 products: average price, total stock, max orders**:
  ```sql
  SELECT
    ROUND(AVG(unitprice)) AS AvgPrice,
    SUM(unitsinstock * unitprice) AS TotalStockValue,
    MAX(unitsonorder) AS MaxOrders
  FROM Products
  WHERE categoryid = 5;
  ```

---

## Notes

- **Customizing Queries**: Replace table and column names as per your database structure.
- **Order of Execution**: SQL executes queries in the following order:
  1. FROM
  2. WHERE
  3. SELECT
  4. ORDER BY
- **Avoid Hardcoding Dates**: Use dynamic functions like `NOW()` or `CURRENT_DATE` for real-time analysis.

---

## Next Steps

In **Part 4**, we will dive into:
- SQL Joins (INNER, LEFT, RIGHT, FULL OUTER).
- Subqueries.
- Grouping data using `GROUP BY`.

Keep practicing, experimenting, and exploring! SQL mastery is just a query away.
