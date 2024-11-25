# Part 1: SQL Exercises

This README contains a series of SQL exercises designed to help you practice and enhance your skills in SQL querying. The exercises cover a variety of topics, including basic SELECT statements, filtering, pattern matching, and working with different data categories. 

## Prerequisites

Before starting, ensure you have:
- A working SQL environment (e.g., MySQL, PostgreSQL, SQL Server, SQLite).
- Access to a sample database like [Northwind](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs) or a similar dataset for testing the queries.

---

## Exercises Overview

### **1. Basic Queries**
Learn how to display messages and retrieve specific columns from tables.

- **Example**: Display a simple message
  ```sql
  SELECT 'Hello, SQL World!';
  ```

- **Retrieve specific columns**:
  ```sql
  SELECT regionid, regiondescription
  FROM Regions;
  ```

---

### **2. Filtering Data**
Practice filtering rows using `WHERE` conditions.

- **Find products costing $50 or more**:
  ```sql
  SELECT productname, unitprice
  FROM Products
  WHERE unitprice >= 50;
  ```

- **Retrieve orders placed in 1997**:
  ```sql
  SELECT orderid, customerid, orderdate
  FROM Orders
  WHERE orderdate BETWEEN '1997-01-01' AND '1997-12-31';
  ```

---

### **3. Using Wildcards**
Search for patterns in text columns.

- **Find employees with names starting with 'A'**:
  ```sql
  SELECT firstname, lastname
  FROM Employees
  WHERE firstname LIKE 'A%';
  ```

- **Search for products containing 'chocolate'**:
  ```sql
  SELECT productname, unitprice
  FROM Products
  WHERE productname LIKE '%chocolate%';
  ```

---

### **4. Distinct Values and Aggregations**
Explore unique entries and grouped data.

- **List all unique customer countries**:
  ```sql
  SELECT DISTINCT country
  FROM Customers;
  ```


---

### **5. Working with Ranges**
Categorize or filter data based on ranges.

- **List medium-priced products** (prices between $10 and $55):
  ```sql
  SELECT productname, unitprice
  FROM Products
  WHERE unitprice BETWEEN 10 AND 55;
  ```

- **Retrieve products in the high-price category**:
  ```sql
  SELECT productname, unitprice
  FROM Products
  WHERE unitprice >= 55;
  ```

---

### **6. Miscellaneous Scenarios**
Additional challenges for advanced queries.

- **Check for customers without country information**:
  ```sql
  SELECT customerid, contactname, country
  FROM Customers
  WHERE country IS NULL;
  ```

- **List top 5 most expensive products**:
  ```sql
  SELECT productname, unitprice
  FROM Products
  WHERE unitprice >55
  LIMIT 5;
  
  ```

---

## Notes

- Replace table and column names if you're working with a database other than Northwind.
- Feel free to tweak queries to explore different datasets or results.
- Ensure you understand each query's logic and practice modifying them to suit different scenarios.

---

## Next Steps

Once you complete **Part 1**, continue with **Part 2**, where we'll dive into more advanced SQL topics like joins, subqueries, and window functions.

Happy Querying!
