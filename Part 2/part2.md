# Part 2: Advanced SQL Exercises

This README is the second installment of our SQL practice series, focusing on advanced filtering, wildcards, and sorting techniques. These exercises build on Part 1 to help you further refine your SQL querying skills.

---

## Prerequisites

Before proceeding, ensure you have:
- Completed **Part 1** of the SQL exercises.
- A functional SQL environment with a sample database like [Northwind](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind) or a similar dataset.

---

## Exercises Overview

### **1. Filtering with Conditions**
Refine your ability to retrieve data using multiple conditions.

- **Find clients in Italy but outside Rome**:
  ```sql
  SELECT customerid, country, city
  FROM Customers
  WHERE city != 'Rome'
  AND country = 'Italy';
  ```

- **Do we have clients in Madrid or Barcelona?**:
  ```sql
  SELECT customerid, companyname, city
  FROM Customers
  WHERE city IN ('Madrid', 'Barcelona');
  ```

- **Retrieve products supplied by suppliers 3, 7, 8, and 10**:
  ```sql
  SELECT productname
  FROM Products
  WHERE supplierid IN (3, 7, 8, 10);
  ```

---

### **2. Wildcards**
Learn to search for patterns using `LIKE`.

- **Find all clients with titles containing 'Manager'**:
  ```sql
  SELECT companyname, contacttitle
  FROM Customers
  WHERE contacttitle LIKE '%Manager%';
  ```

- **Postal codes starting with 2 and having 5 characters**:
  ```sql
  SELECT customerid, companyname, postalcode
  FROM Customers
  WHERE postalcode LIKE '2____';
  ```

- **Find products related to 'Cheese'**:
  ```sql
  SELECT productname, unitprice
  FROM Products
  WHERE productname LIKE '%Cheese%';
  ```

---

### **3. Advanced Filtering**
Explore more complex logic using `AND`, `OR`, and grouping.

- **Clients based in Germany or Sweden who are Sales Managers**:
  ```sql
  SELECT contactname, country, contacttitle
  FROM Customers
  WHERE country IN ('Germany', 'Sweden')
  AND contacttitle = 'Sales Manager';
  ```

- **Owners located outside France**:
  ```sql
  SELECT companyname, country, contacttitle
  FROM Customers
  WHERE country != 'France'
  AND contacttitle = 'Owner';
  ```

---

### **4. Sorting Data**
Order results to identify patterns or prioritize key data.

- **List all clients in Europe sorted by country alphabetically**:
  ```sql
  SELECT companyname, country, region
  FROM Customers
  WHERE region LIKE '%Europe%'
  ORDER BY country ASC;
  ```

- **Available products sorted by the highest stock count first**:
  ```sql
  SELECT productname, unitsinstock
  FROM Products
  WHERE unitsinstock > 0
  ORDER BY unitsinstock DESC;
  ```

- **List all products in category 3 sorted by price (highest to lowest)**:
  ```sql
  SELECT productname, unitsinstock, unitsonorder, unitprice
  FROM Products
  WHERE categoryid = 3
  ORDER BY unitprice DESC;
  ```

---

## Notes

- Replace table and column names if using a database other than Northwind.
- Adjust filtering conditions and wildcards to suit your dataset.
- Test queries thoroughly and experiment with modifications to gain a deeper understanding.

---

## Next Steps

After completing **Part 2**, continue with **Part 3**, where we’ll dive into complex SQL topics such as joins, subqueries, and aggregations.

Keep practicing and enjoy your journey into SQL mastery!
