-- =========================================
-- Pizza Sales Analysis
-- Time-Based Analysis
-- =========================================

-- -----------------------------------------
-- Daily Revenue
-- -----------------------------------------
SELECT 
    o.date,
    SUM(od.quantity * p.price) AS daily_revenue
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
GROUP BY o.date
ORDER BY o.date;

-- -----------------------------------------
-- Monthly Revenue
-- -----------------------------------------
Select 
	date_format(o.date, '%m-%Y') As Month_Year,
    sum(od.quantity * p.price) AS Revenue
from order_details od
join pizzas p
on p.pizza_id = od.pizza_id
join orders o
on o.order_id = od.order_id
group by Month_Year
order by Month_Year;
