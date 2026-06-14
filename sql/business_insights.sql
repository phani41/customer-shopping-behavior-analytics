-- Business insight queries for customer shopping behavior analysis

-- 1) Revenue and order volume by city
SELECT
    city,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct/100.0)), 2) AS total_revenue
FROM customer_shopping_data_cleaned
GROUP BY city
ORDER BY total_revenue DESC;

-- 2) Top performing product categories
SELECT
    product_category,
    COUNT(order_id) AS orders,
    ROUND(SUM(quantity * unit_price * (1 - discount_pct/100.0)), 2) AS category_revenue,
    ROUND(AVG(rating), 2) AS avg_rating
FROM customer_shopping_data_cleaned
GROUP BY product_category
ORDER BY category_revenue DESC;

-- 3) Payment method adoption
SELECT
    payment_method,
    COUNT(*) AS transactions,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS share_pct
FROM customer_shopping_data_cleaned
GROUP BY payment_method
ORDER BY transactions DESC;

-- 4) Discount impact on average order value
SELECT
    CASE
        WHEN discount_pct = 0 THEN 'No Discount'
        WHEN discount_pct <= 10 THEN 'Low Discount (1-10%)'
        WHEN discount_pct <= 20 THEN 'Medium Discount (11-20%)'
        ELSE 'High Discount (>20%)'
    END AS discount_band,
    ROUND(AVG(quantity * unit_price * (1 - discount_pct/100.0)), 2) AS avg_order_value,
    COUNT(*) AS orders
FROM customer_shopping_data_cleaned
GROUP BY discount_band
ORDER BY avg_order_value DESC;
