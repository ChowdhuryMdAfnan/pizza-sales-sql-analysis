-- =========================================
-- Pizza Sales Analysis
-- Advanced SQL Analysis
-- =========================================
-- -----------------------------------------
-- CTE: Ranking pizzas by total sold
-- -----------------------------------------
with total_sales as
(
	select
	pt.name,
	sum(od.quantity) AS Total_sold
	from order_details od
	join pizzas p
	on p.pizza_id = od.pizza_id
	join pizza_types pt
	on pt.pizza_type_id = p.pizza_type_id
	group by pt.name
	order by Total_sold desc)
select 
pt.name,
Total_sold,
rank() over(order by total_sold desc) as sales_rank
from total_sales;

-- -----------------------------------------
-- Percentage contribution of each pizza
-- -----------------------------------------
with total_sales as
(
	select
	pt.name,
	sum(od.quantity) AS Total_sold
	from order_details od
	join pizzas p
	on p.pizza_id = od.pizza_id
	join pizza_types pt
	on pt.pizza_type_id = p.pizza_type_id
	group by pt.name
	order by Total_sold desc)
select 
*,
round(total_sold * 100/sum(total_sold) over(),2) as pct_contribution
from total_sales
order by total_sold desc;

-- -----------------------------------------
-- Top 5 pizzas using ranking
-- -----------------------------------------
with total_sales as
(
	select
	pt.name,
	sum(od.quantity) AS Total_sold
	from order_details od
	join pizzas p
	on p.pizza_id = od.pizza_id
	join pizza_types pt
	on pt.pizza_type_id = p.pizza_type_id
	group by pt.name
	order by Total_sold desc),
    ranking as 
    (
		select 
		*,
		rank() over(order by total_sold desc) as sales_ranking
		from total_sales
		order by total_sold desc)
select 
*
from ranking
where sales_ranking <=5
order by sales_ranking;

