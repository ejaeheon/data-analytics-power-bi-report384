-- Which month in 2022 has had the highest revenue?

SELECT month_name, SUM(sale_price)

FROM forquerying2

GROUP BY month_name 
ORDER BY SUM(sale_price) DESC
LIMIT 1;