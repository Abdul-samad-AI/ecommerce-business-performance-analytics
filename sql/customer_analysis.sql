--Top Customers by LTV

SELECT customer_id,customer_name,customer_ltv
FROM customers
ORDER BY customer_ltv DESC
LIMIT 10;

--Repeat vs New Customers

SELECT customer_type,COUNT(*)
AS customer_count,SUM(total_revenue)
FROM customers
GROUP BY customer_type;

--Revenue Contribution by Customer Segment
SELECT segment,
COUNT(customer_id) AS customers,
SUM(total_revenue) AS revenue
FROM customers
GROUP BY segment
ORDER BY revenue DESC;

--Average Revenue per Customer
SELECT
ROUND(AVG(total_revenue), 2)
AS avg_revenue_per_customer
FROM customers;
