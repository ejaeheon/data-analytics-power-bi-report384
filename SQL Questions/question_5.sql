-- Which product category generated the most profit for the "Wiltshire, UK" region in 2021?
SELECT 
    category,
    SUM(product_quantity * (sale_price - cost_price)) AS total_profit

FROM forquerying2 

WHERE full_region = 'Wiltshire, UK' AND EXTRACT(YEAR FROM dates::date) = 2021

GROUP BY category
ORDER BY total_profit DESC

