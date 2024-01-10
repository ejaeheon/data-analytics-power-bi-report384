-- Which German store type had the highest revenue for 2022?

SELECT store_type, country, SUM(sale_price)

FROM forquerying2

WHERE country = 'Germany'

GROUP BY store_type, country
ORDER BY SUM(sale_price) DESC
LIMIT 1;
