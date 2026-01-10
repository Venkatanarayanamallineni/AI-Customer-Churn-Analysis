SELECT p.category, AVG(oi.discount) AS avg_discount
FROM order_items oi
JOIN products p ON oi.product_name = p.product_name
GROUP BY p.category
ORDER BY avg_discount DESC;
