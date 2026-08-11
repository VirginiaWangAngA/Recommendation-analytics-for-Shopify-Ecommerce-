WITH product_combinations AS (
    SELECT 
        oi1.product_id AS product_a,
        p1.product_name AS product_a_name,
        p1.category AS category_a,
        oi2.product_id AS product_b,
        p2.product_name AS product_b_name,
        p2.category AS category_b,
        COUNT(DISTINCT oi1.order_id) AS times_bought_together,
        ROUND(AVG(p1.price + p2.price), 2) AS avg_combined_price
    FROM order_items oi1
    JOIN order_items oi2 ON oi1.order_id = oi2.order_id 
        AND oi1.product_id < oi2.product_id
    JOIN products p1 ON oi1.product_id = p1.product_id
    JOIN products p2 ON oi2.product_id = p2.product_id
    GROUP BY oi1.product_id, p1.product_name, p1.category, 
             oi2.product_id, p2.product_name, p2.category
)
SELECT 
    product_a,
    product_a_name,
    category_a,
    product_b,
    product_b_name,
    category_b,
    times_bought_together,
    avg_combined_price,
    ROW_NUMBER() OVER (ORDER BY times_bought_together DESC) AS cross_sell_rank
FROM product_combinations
ORDER BY cross_sell_rank;
