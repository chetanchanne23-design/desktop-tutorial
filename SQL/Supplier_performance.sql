SELECT
    supplier_name,
    country,
    lead_time_days,
    rating
FROM suppliers
ORDER BY rating DESC, lead_time_days ASC