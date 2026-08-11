WITH customer_clv AS (
    SELECT 
        c.customer_id,
        c.customer_name,
        c.customer_tier,
        c.country,
        COUNT(DISTINCT o.order_id) AS total_orders,
        SUM(o.total_amount) AS total_revenue,
        AVG(o.total_amount) AS avg_order_value,
        COUNT(DISTINCT oi.product_id) AS unique_products_purchased,
        ROUND(SUM(o.total_amount) - SUM(p.cost * oi.quantity), 2) AS profit_margin
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    LEFT JOIN order_items oi ON o.order_id = oi.order_id
    LEFT JOIN products p ON oi.product_id = p.product_id
    GROUP BY c.customer_id, c.customer_name, c.customer_tier, c.country
)
SELECT 
    customer_id,
    customer_name,
    customer_tier,
    country,
    total_orders,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(avg_order_value, 2) AS avg_order_value,
    unique_products_purchased,
    ROUND(profit_margin, 2) AS profit_margin,
    ROW_NUMBER() OVER (ORDER BY total_revenue DESC) AS clv_rank
FROM customer_clv
ORDER BY clv_rank;
