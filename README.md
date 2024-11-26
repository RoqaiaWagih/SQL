# SQL Training Exercises: Comprehensive Guide  

This README serves as a guide for the multi-part SQL training exercises. Each part builds foundational and advanced SQL skills to help you explore, filter, aggregate, and analyze data effectively.  

---

## **Contents**  
1. **Part 1: Filtering & Basic Queries**  
2. **Part 2: Wildcards and Advanced Filtering**  
3. **Part 3: Math Operations and Aggregation**  
4. **Part 4: Grouping Data and Using `HAVING`**  

---

## **Part 1: Filtering & Basic Queries**  

### **Key Concepts**  
- Basic `SELECT` statements for retrieving data.  
- Filtering rows with the `WHERE` clause.  
- Using comparison operators (`=`, `!=`, `<`, `>`, `<=`, `>=`) and logical operators (`AND`, `OR`).  

### **Examples**  
1. Retrieve all customers based in Germany:  
   ```sql
   SELECT customerid, country, city
   FROM Customers
   WHERE country = 'Germany';
   ```  

2. Find orders placed in 1997:  
   ```sql
   SELECT orderid, orderdate
   FROM Orders
   WHERE orderdate BETWEEN '1997-01-01' AND '1997-12-31';
   ```  

---

## **Part 2: Wildcards and Advanced Filtering**  

### **Key Concepts**  
- Filtering with `LIKE` for pattern matching using `%` and `_`.  
- Using `IN` for multiple value checks.  
- Logical grouping with parentheses in complex conditions.  

### **Examples**  
1. Find customers whose names start with "A":  
   ```sql
   SELECT contactname
   FROM Customers
   WHERE contactname LIKE 'A%';
   ```  

2. Find products from specific suppliers:  
   ```sql
   SELECT productname
   FROM Products
   WHERE supplierid IN (1, 12, 15);
   ```  

---

## **Part 3: Math Operations and Aggregation**  

### **Key Concepts**  
- Arithmetic operations on columns (`+`, `-`, `*`, `/`, `%`).  
- Aggregation functions:  
  - `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.  
- Calculating derived columns using aliases.  

### **Examples**  
1. Calculate total sales for a product:  
   ```sql
   SELECT 
     productid,
     SUM(unitprice * quantity * (1 - discount)) AS TotalSales
   FROM "Order Details"
   WHERE productid = 15;
   ```  

2. Find the average age of employees:  
   ```sql
   SELECT ROUND(AVG(DATE('now') - birthdate), 1) AS AvgAge
   FROM Employees;
   ```  

---

## **Part 4: Grouping Data and Using `HAVING`**  

### **Key Concepts**  
- Grouping data with `GROUP BY` for summaries.  
- Filtering grouped data with `HAVING`.  
- Combining aggregation functions with grouping.  

### **Examples**  
1. Count the number of products in each category:  
   ```sql
   SELECT categoryid, COUNT(productname) AS NumProducts
   FROM Products
   GROUP BY categoryid;
   ```  

2. Find customers with total freight charges over $41K:  
   ```sql
   SELECT customerid, ROUND(SUM(freight)) AS TotalFreight
   FROM Orders
   GROUP BY customerid
   HAVING TotalFreight > 41000;
   ```  

---


---

