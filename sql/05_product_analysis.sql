-- =========================================
-- Pizza Sales Analysis
-- Product Analysis
-- =========================================

-- -----------------------------------------
-- Revenue by Pizza Category
-- -----------------------------------------
SELECT
    pt.category,
    SUM(od.quantity * p.price) AS category_revenue
FROM order_details od
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY category_revenue DESC;


-- -----------------------------------------
-- Pizzas Sold by Size
-- -----------------------------------------
SELECT
    p.size,
    SUM(od.quantity) AS total_pizzas_sold
FROM order_details od
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
GROUP BY p.size
ORDER BY total_pizzas_sold DESC;


-- -----------------------------------------
-- Top 5 Best-Selling Pizzas
-- -----------------------------------------
SELECT
    pt.name,
    SUM(od.quantity) AS total_sold
FROM order_details od
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold DESC
LIMIT 5;


-- -----------------------------------------
-- Bottom 5 Worst-Selling Pizzas
-- -----------------------------------------
SELECT
    pt.name,
    SUM(od.quantity) AS total_sold
FROM order_details od
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold ASC
LIMIT 5;