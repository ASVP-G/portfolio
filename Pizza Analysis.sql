-- Query: What are the different categories of pizzas?
SELECT DISTINCT category FROM pizza_types;

/*
There are 4 categories of pizza; classic, chicken, supreme, and veggie. 
*/

-- What is the price range for pizzas?
SELECT MIN(price), MAX(price) FROM pizzas;

/*
The minumum price is 9.75, and the maximum price is 35.95.
*/

-- Find the 10 best selling pizzas

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
	total_sold DESC
LIMIT 10;

-- Create a view of the 10 best selling pizzas

CREATE VIEW top_10_bestsellers AS
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
	total_sold DESC
LIMIT 10;
	

