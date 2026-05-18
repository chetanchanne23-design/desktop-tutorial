SELECT
    i.inventory_id,
    p.product_name,
    i.stock_quantity,
    i.reorder_level,
    i.safety_stock,
    w.warehouse_name,
    CASE
        WHEN i.stock_quantity < i.reorder_level
            THEN 'Low Stock'
        ELSE 'Healthy Stock'
    END AS inventory_status
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
JOIN warehouse w
    ON i.warehouse_id = w.warehouse_id
ORDER BY i.stock_quantity ASC;