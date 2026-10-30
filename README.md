Project Overview

This project was completed as a capstone assignment at the end of my SQL class to demonstrate my understanding of SQL and its application to business data analysis.

Using a sample e-commerce database, I explored customer distribution, product pricing, order performance, inventory, and employee salaries using MySQL.

Business Objectives
The project aimed to answer the following questions:

- Which cities have the highest number of customers?
- Which product categories have the highest average prices?
- What percentage of orders are completed, cancelled, or pending?
- Which customers have placed multiple orders?
- Which products have the highest order quantities?
- How do average employee salaries vary by department?

Tool Used
- MySQL — querying and analysing relational data.


SQL Skills Demonstrated

- Data retrieval and filtering using `SELECT` and `WHERE`
- Aggregations using `COUNT()`, `SUM()`, `AVG()`, and `MAX()`
- Grouping and filtering aggregated results using `GROUP BY` and `HAVING`
- Conditional logic using `CASE WHEN`
- Table relationships using `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`
- Subqueries
- Combining result sets using `UNION` and `UNION ALL`
- Primary keys and foreign key constraints

 Key Findings

1. Customer Distribution
Lagos had the highest customer count, with 6 of the 20 customers in the dataset, followed by Abuja with 5.

2. Product Pricing
Electronics had the highest average product price, at approximately ₦217,142.86.

3. Order Status
Of the 25 recorded orders:
- Completed: 17 (68%)
- Cancelled: 4 (16%)
- Pending: 4 (16%)

4. Repeat Purchases

Five customers placed more than one order in the dataset. Further analysis could help evaluate customer retention and repeat-purchase behaviour.

5. Inventory

The Standing Desk had the lowest recorded stock quantity, at 8 units. Reviewing sales velocity and supplier lead times could help determine whether replenishment is needed.

Business Recommendations

- Investigate opportunities to expand the customer base in cities with lower customer representation.
- Evaluate product sales, stock levels, and margins before making inventory or product-expansion decisions.
- Investigate cancellation reasons and the age of pending orders.
- Analyze repeat-purchase patterns to identify customer retention opportunities.
- Compare product sales quantities with available stock to support inventory planning.

Project Limitations

This is a small sample database created for SQL learning and practice. The findings are exploratory and should not be treated as evidence of the performance of a real business.

The database does not contain sufficient cost and transaction-level pricing information to calculate actual profit margins reliably.

What I Learned

Through this project, I practiced writing SQL queries, analyzing related tables, applying aggregate functions, using joins and subqueries, and translating query results into potential business insights.


Project Screenshots
1. Customer Distribution
![Customer Distribution](Customer%20distribution.png)

 2. Order Status Analysis
![Order Status Analysis](Order%20status%20analysis.png)

3. Product Category Analysis
![Product Category Analysis](Product%20category%20analysis.png)

