SELECT
    DATE_TRUNC('month', date) AS sales_month,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY sales_month
ORDER BY sales_month;