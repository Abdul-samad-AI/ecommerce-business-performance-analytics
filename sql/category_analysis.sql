--Category Performance
SELECT p.category, SUM(o.sales) AS revenue,
SUM(o.profit) AS profit
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

--CTE

WITH monthly_revenue AS (
SELECT  order_year,
        order_month,
        SUM(sales) AS revenue
FROM orders
GROUP BY order_year, order_month
)
SELECT *
FROM monthly_revenue;
