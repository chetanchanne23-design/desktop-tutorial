SELECT
    region,
    SUM(sales_amount) AS total_sales,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_sales DESC;