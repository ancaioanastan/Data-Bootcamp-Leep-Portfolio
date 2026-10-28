# SQL & Database Architecture Portfolio
 
**Tech Stack:** SQL (PostgreSQL / MySQL), Supabase, Relational Database Design (ERD Modeling)

---

## 📌 Project Overview

This repository demonstrates my practical expertise in database design, SQL querying, data modeling, and relational analysis. The portfolio showcases real-world analytical projects, database schemas, and business scenario solving across two primary datasets: **Northwind Traders** and **World DB**, along with a custom relational architecture blueprint for an educational platform (**SkillUp Academy**).

---

## 📂 Repository Contents

| File / Artifact | Description | Key Skills Demonstrated |
| :--- | :--- | :--- |
| `Northwind Database create.sql` | DDL & DML scripts establishing tables, relationships, and seed data. | Data Definition, Schema Setup |
| `Creating World DB file.sql` | Relational table generation and dataset insertion for global geographical data. | Schema Construction, Data Loading |
| `SQL basic queries.sql` | Fundamentals of querying, filtering, sorting, pattern matching, and conditional filtering. | `SELECT`, `WHERE`, `LIKE`, `IN`, `BETWEEN` |
| `SQL joins, filters, and aggregations.sql` | Multi-table joins, relational queries, grouping, and business aggregations. | `INNER JOIN`, `LEFT/RIGHT JOIN`, `GROUP BY`, `HAVING`, `SUM`, `COUNT` |

---

## 🛠️ Key Technical Modules & Case Studies

### 1. Relational Database Architecture (SkillUp Academy)
* **Objective:** Redesign a legacy spreadsheet system into a scalable 3rd Normal Form (3NF) relational database.
* **Core Entities:** `Students`, `Courses`, `Enrolments`, `Orders`.
* **Data Integrity:** Applied Primary Keys (`student_id`, `course_id`) and Foreign Keys (`student_id` & `course_id` inside `Enrolments`) to enforce referential integrity and eliminate redundancy.
* **Architecture Comparison:** Evaluated Relational (PostgreSQL) vs. Non-Relational (NoSQL/MongoDB) systems for clickstream logs and unstructured user feedback.

### 2. Business Analytics (Northwind Traders)
* **Sales & Logistics:** Analyzing high-value products, tracking order dates, and auditing regional customer bases across North America and Europe.
* **Multi-Table Relational Analytics:** Combining `Products`, `Categories`, `Suppliers`, `Orders`, and `Employees` to track supply chains, employee sales performance, and regional revenue metrics.
* **Complex Aggregation:** Aggregating total quantities sold, total revenue generated per product (`SUM(Quantity * Price)`), and order volume per shipping partner.

### 3. Global Demographic & Economic Insights (World DB)
* **Demographic Analysis:** Identifying population distributions, calculating density (`Population / SurfaceArea`), and locating extreme demographic outliers (most/least populated cities).
* **Geographical Foreign Key Queries:** Linking capital city IDs to country primary keys to analyze administrative populations across continents.
* **Data Pagination:** Leveraging `LIMIT` and `OFFSET` for pagination reports (e.g., extracting cities ranked 31st to 40th by population size).

---

## 📊 Sample SQL Query Demonstrations

### Multi-Table Join & Sales Revenue Calculation
```sql
-- Calculate total revenue generated per product sorted by highest revenue
SELECT 
    p.ProductName, 
    SUM(od.Quantity * p.Price) AS TotalSales
FROM Order_Details AS od
JOIN Products AS p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;
```

### Relational Left Join (Identifying Inactive Records)
```sql
-- Find customers who have never placed an order
SELECT 
    c.CustomerName, 
    o.OrderID
FROM Customers AS c
LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;
```

