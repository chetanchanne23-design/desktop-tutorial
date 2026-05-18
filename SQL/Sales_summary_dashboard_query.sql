SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    SUM(sales_amount) AS total_sales,
    ROUND(AVG(sales_amount), ) AS average_sales
FROM sales;