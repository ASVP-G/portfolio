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

CREATE VIEW busiest_hours_of_the_day AS
SELECT
	EXTRACT(HOUR FROM order_time) AS order_hour,
	COUNT(order_id) AS total_orders
FROM
	orders
GROUP BY
	order_hour
ORDER BY
	total_orders DESC;

CREATE VIEW busiest_days_of_the_week AS
SELECT
	TO_CHAR(order_date, 'Day') AS day_of_week,
	COUNT(order_id) AS total_orders
FROM 
 orders
GROUP BY
	day_of_week
ORDER BY
	total_orders DESC;

CREATE VIEW worst_sellers AS
SELECT
	pt.name,
	SUM(od.quantity) AS total_sold
FROM
	order_details od
JOIN
	pizzas p ON od.pizza_id = p.pizza_id
JOIN
	pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY
	pt.name
ORDER BY
	total_sold ASC
LIMIT 10;