WITH product_performance AS (
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        s.supplier_name,
        s.reliability_score,
        COUNT(oi.order_item_id) AS total_units_sold,
        SUM(oi.quantity * (oi.unit_price - p.cost)) AS total_profit,
        ROUND(AVG(pr.rating), 1) AS avg_review_rating,
        COUNT(pr.review_id) AS total_reviews
    FROM products p
    LEFT JOIN order_items oi ON p.product_id = oi.product_id
    LEFT JOIN suppliers s ON p.supplier_id = s.supplier_id
    LEFT JOIN product_reviews pr ON p.product_id = pr.product_id
    GROUP BY p.product_id, p.product_name, p.category, s.supplier_name, s.reliability_score
)
SELECT 
    product_name,
    category,
    supplier_name,
    reliability_score,
    total_units_sold,
    total_profit,
    avg_review_rating,
    total_reviews,
    ROW_NUMBER() OVER (ORDER BY total_profit DESC) AS profitability_rank
FROM product_performance
ORDER BY profitability_rank;
