-- =========================================
-- Pizza Sales Analysis
-- KPI Analysis
-- =========================================

-- -----------------------------------------
-- KPI 1: Total Revenue
-- -----------------------------------------
select 
  sum(od.quantity*p.price) as Total_Revenue
from order_details od
join pizzas p
on p.pizza_id = od.pizza_id; -- '817860.049999993'

-- -----------------------------------------
-- KPI 2: Total Pizzas Sold
-- -----------------------------------------
select 
sum(order_details.quantity) As Total_Pizza_Sold
from order_details; -- '49574'

-- -----------------------------------------
-- KPI 3: Total Orders
-- -----------------------------------------
select 
count(distinct order_id) As Total_orders
from order_details;  -- '21350'
