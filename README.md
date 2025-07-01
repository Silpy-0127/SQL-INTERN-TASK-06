# SQL Internship - Task 6: Subqueries and Nested Queries (MySQL)

#  About the Task
In this task, I focused on writing SQL queries using **subqueries** and **nested queries**.  
The goal was to practice:
- Scalar subqueries
- Correlated subqueries
- Subqueries in `SELECT`, `WHERE`, `FROM` clauses
- Using `IN`, `EXISTS`, `NOT EXISTS`, `=`
- Creating derived tables using subqueries in `FROM`

This task helped me apply advanced SQL query logic to extract insights from relational data.


#  Database Used
I worked with an **E-Commerce Retail Database**, which consists of the following tables:
- `Sellers` — Seller contact and location details
- `Customers` — Customer info and addresses
- `Categories` — Types of products
- `Products` — Items listed by sellers
- `Inventory` — Available stock and restocking info
- `Orders` — Purchase orders made by customers
- `OrderItems` — Products purchased per order
- `Payments` — Payment methods and transaction details

These interrelated tables made it ideal for applying multi-level subqueries.


#  What I Did
I implemented multiple subqueries to solve various business queries:
- **Scalar subqueries in SELECT** — Example: show each customer’s total amount spent
- **Subqueries in WHERE using IN** — Example: list customers who placed orders over ₹2000
- **Correlated subqueries** — Example: products priced above their category average
- **Subqueries in WHERE using EXISTS** — Example: sellers with available inventory
- **Subqueries in FROM (derived tables)** — Example: total revenue and order count
- **Nested subqueries with multiple joins** — Example: customers who ordered from sellers in Delhi
- **Subqueries with sorting and LIMIT** — Example: top spending customer

Each query demonstrated a real-world use case of nested logic in SQL.


# Tools Used
- **MySQL Workbench**


# Files Included
| `Subqueries.sql` | SQL queries for Task 6 using subqueries and nested logic |
| `README.md` | This file — documentation of the task and queries written |



I gained practical experience in writing advanced SQL queries that are frequently used in data analysis, reporting, and business intelligence.

