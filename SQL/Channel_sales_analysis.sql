SELECT
    channel,
    SUM(sales_amount) AS total_sales,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY channel
ORDER BY total_sales DESC;