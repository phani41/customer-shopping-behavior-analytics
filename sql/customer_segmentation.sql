-- Customer segmentation using RFM metrics
WITH base AS (
    SELECT
        customer_id,
        MAX(order_date) AS last_order_date,
        COUNT(order_id) AS frequency,
        ROUND(SUM(quantity * unit_price * (1 - discount_pct/100.0)), 2) AS monetary
    FROM customer_shopping_data_cleaned
    GROUP BY customer_id
),
reference AS (
    SELECT DATE(MAX(order_date), '+1 day') AS snapshot_date
    FROM customer_shopping_data_cleaned
),
rfm AS (
    SELECT
        b.customer_id,
        CAST(julianday(r.snapshot_date) - julianday(b.last_order_date) AS INT) AS recency,
        b.frequency,
        b.monetary
    FROM base b
    CROSS JOIN reference r
),
scored AS (
    SELECT
        customer_id,
        recency,
        frequency,
        monetary,
        NTILE(4) OVER (ORDER BY recency ASC) AS r_score,
        NTILE(4) OVER (ORDER BY frequency DESC) AS f_score,
        NTILE(4) OVER (ORDER BY monetary DESC) AS m_score
    FROM rfm
)
SELECT
    customer_id,
    recency,
    frequency,
    monetary,
    r_score + f_score + m_score AS segment_score,
    CASE
        WHEN (r_score + f_score + m_score) >= 10 THEN 'Champion'
        WHEN (r_score + f_score + m_score) >= 7 THEN 'Potential Loyalist'
        ELSE 'At Risk'
    END AS customer_segment
FROM scored
ORDER BY segment_score DESC, monetary DESC;
