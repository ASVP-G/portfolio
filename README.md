# Pizza Sales Analysis and Performance Dashboard
**Objective**
 - I analyzed publicly available data for a pizza restaurant to identify key performance drivers and provide actionable recommendations for improving revenue and operational efficiency.

**Tools Used**
  - PostgreSQL, Tableau

**The Process**
  1. Data Import and Cleaning: Imported the data from CSV files using the COPY command and resolved data integrity issues (UTF-8 encoding errors).
  2. Data Modeling and Setup: Designed and created a relational database schema with four tables (orders, order_details, pizzas, pizza_types) using CREATE TABLE statements. 
  3. SQL Analysis: Answered key business questions like what are the best performing pizzas by both revenue and sales volume, what are the worst performing pizzas, and what days and times of day are the busiest. Made views of these queries for easier analysis.
  4. Used this data to create a dashboard in Tableau. The dashboard clearly visualizes various insights like the best selling pizzas by volume, or the best day of the week for sales. On the dashboard, I also provide business recommendations based on the findings of my analysis.
  5. Picture of dashboard <img width="1417" height="807" alt="Dashboard public" src="https://github.com/user-attachments/assets/3c5d612c-0eb5-4bb4-a551-58656066797f" />

     

**Key Findings and Recommendations:**
  1. The Classic Deluxe is the most popular pizza, but the Thai Chicken Pizza generates the most revenue. Recommendation: Promote the Thai Chicken Pizza to maximize profit.
  2. Friday is our busiest day, with sales peaking between 12-1 PM and 5-6 PM. Recommendation: Ensure maximum staff coverage during these peak periods.
  3. The Brie Carre Pizza is underperforming. Recommendation: Take the Brie Carre Pizza off the to lighten load on employees and streamline inventory. 
   

**Code block example:**

```sql
CREATE VIEW sales_by_revenue AS
SELECT 
	pt.name,
	SUM(od.quantity * p.price) AS total_revenue
FROM
	order_details od
JOIN
	pizzas p ON od.pizza_id = p.pizza_id
JOIN
	pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY
	pt.name
ORDER BY
	total_revenue DESC
LIMIT 10;
```

[Project Dashboard Link](https://public.tableau.com/app/profile/gabriel.skunda/viz/PizzaSalesPerformanceAnalysis/PizzaSalesPerformanceDashboard?publish=yes)

