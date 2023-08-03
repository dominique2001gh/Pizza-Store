SELECT * FROM pizza

-- Display the first 5 rows of the dataset
SELECT TOP 5* 
FROM pizza; 


-- Calculate the total revenue
SELECT SUM(total_price) AS total_revenue
FROM pizza;

-- Calculate the average order value
SELECT pizza_name, AVG(total_price) AS average_order_value
FROM pizza
GROUP BY pizza_name;

-- Total Pcs of pizza sold
SELECT SUM(quantity) AS Total_Pcs_Sold 
FROM pizza;

-- Total Orders Placed 
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza;

--Average Pizza per order. ie average number of pizza sold per order


SELECT AVG(pizzas_per_order) AS average_pizzas_per_order
FROM (
    SELECT order_id, COUNT(*) AS pizzas_per_order
    FROM pizza 
    GROUP BY order_id
) AS pizzas_per_order_counts;





