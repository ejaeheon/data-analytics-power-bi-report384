-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders
SELECT 
    DISTINCT (dim_store.store_type) AS store_type,
    SUM(product_quantity * dim_product.sale_price) AS total_sales,
    (SUM(orders.product_quantity * dim_product.sale_price) / (SELECT SUM(orders.product_quantity * dim_product.sale_price) FROM orders JOIN dim_product ON orders.product_code = dim_product.product_code)) * 100 AS percentage_of_total_sales,
    COUNT(orders.order_date_uuid) AS total_orders

FROM orders
INNER JOIN dim_product ON orders.product_code = dim_product.product_code
INNER JOIN dim_store ON orders.store_code = dim_store.store_code

GROUP BY store_type
