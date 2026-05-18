SELECT
    w.warehouse_name,
    w.capacity,
    SUM(i.stock_quantity) AS current_stock,
    ROUND(
        (SUM(i.stock_quantity)::NUMERIC / w.capacity) * 100,
        2
    ) AS utilization_percentage
FROM warehouse w
JOIN inventory i
    ON w.warehouse_id = i.warehouse_id
GROUP BY w.warehouse_name, w.capacity
ORDER BY utilization_percentage DESC;