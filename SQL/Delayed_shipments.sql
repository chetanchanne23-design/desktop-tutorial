SELECT
    shipment_id,
    order_id,
    carrier,
    delivery_status,
    delay_days
FROM shipments
WHERE delay_days > 0
ORDER BY delay_days DESC;