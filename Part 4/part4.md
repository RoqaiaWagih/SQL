# Part 4: Grouping Data in SQL

This README covers the **Part 4** SQL exercises, focusing on grouping and aggregating data with `GROUP BY` and filtering grouped data using `HAVING`. These exercises will help you extract valuable insights from datasets.

---

## **Key Concepts**

### **1. Grouping Data with `GROUP BY`**
- Groups rows that share a common value in one or more columns.
- Syntax:
  ```sql
  SELECT column1, column2, AGG(column3)
  FROM Table
  GROUP BY column1, column2;
  ```
- Common aggregate functions: 
  - `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()`.

---

### **2. Filtering Groups with `HAVING`**
- Applies conditions to grouped data.
- Unlike `WHERE`, it filters aggregated results.
- Syntax:
  ```sql
  SELECT column1, AGG(column2)
  FROM Table
  GROUP BY column1
  HAVING AGG(column2) condition;
  ```

---

## **Exercises**

### **1. Basic Grouping**
- **Count Products by Category**:
  ```sql
  SELECT categoryid, COUNT(productname) AS NumProducts
  FROM Products
  GROUP BY categoryid;
  ```

- **Count Products by Supplier**:
  ```sql
  SELECT supplierid, COUNT(productid) AS NumProducts
  FROM Products
  GROUP BY supplierid
  ORDER BY supplierid;
  ```

---

### **2. Grouping with Multiple Columns**
- **Customers by City and Country**:
  ```sql
  SELECT country, city, COUNT(customerid) AS NumCustomers
  FROM Customers
  GROUP BY country, city
  ORDER BY country, city;
  ```

- **Orders by Employee and Ship Country**:
  ```sql
  SELECT employeeid, shipcountry, COUNT(orderid) AS NumOrders
  FROM Orders
  GROUP BY employeeid, shipcountry
  ORDER BY employeeid, shipcountry;
  ```

---

### **3. Using `HAVING` for Filtered Aggregates**
- **Products with Over 50 Orders**:
  ```sql
  SELECT productid, COUNT(orderid) AS NumOrders
  FROM "Order Details"
  GROUP BY productid
  HAVING NumOrders > 50
  ORDER BY NumOrders DESC;
  ```

- **Customers with Total Freight Charges > $41K**:
  ```sql
  SELECT customerid, ROUND(SUM(freight), 2) AS TotalFreight
  FROM Orders
  GROUP BY customerid
  HAVING TotalFreight > 41000
  ORDER BY TotalFreight DESC;
  ```

---

### **4. Advanced Aggregations**
- **Average Order Delay per Customer**:
  ```sql
  SELECT customerid, ROUND(AVG(julianday(shippeddate) - julianday(orderdate)), 1) AS AvgDelay
  FROM Orders
  GROUP BY customerid;
  ```

- **Customers with Average Order Delay < 7 Days**:
  ```sql
  SELECT customerid, ROUND(AVG(julianday(shippeddate) - julianday(orderdate)), 1) AS AvgDelay
  FROM Orders
  GROUP BY customerid
  HAVING AvgDelay < 7;
  ```

---

### **5. Real-World Scenarios**
- **Top-Selling Products by Order Count**:
  ```sql
  SELECT productid, COUNT(orderid) AS OrderCount
  FROM "Order Details"
  GROUP BY productid
  ORDER BY OrderCount DESC;
  ```

- **Orders on Specific Dates (e.g., Nov 23, 2016)**:
  ```sql
  SELECT employeeid, shipcountry, COUNT(orderid) AS NumOrders
  FROM Orders
  WHERE date(orderdate) = date('2016-11-23')
  GROUP BY employeeid, shipcountry
  ORDER BY employeeid, shipcountry;
  ```

---

## **Best Practices**
1. **Use Meaningful Aggregates**: Combine `COUNT`, `SUM`, `AVG`, etc., for meaningful summaries.
2. **Be Careful with NULLs**: Null values are grouped together.
3. **Order Results**: Use `ORDER BY` for readability.
4. **Filter at the Right Stage**:
   - Use `WHERE` to filter rows before grouping.
   - Use `HAVING` to filter aggregated results.

---

## **Next Steps**
In **Part 5**, we will explore SQL joins, subqueries, and more advanced techniques. Keep practicing and experimenting with the concepts in this exercise!
