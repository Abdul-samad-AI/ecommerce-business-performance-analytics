CREATE TABLE orders (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    customer_id VARCHAR(20),
    product_id INT,
    quantity INT,
    sales NUMERIC,
    profit NUMERIC,
    discount NUMERIC,
    order_year INT,
    order_month INT,
    is_outlier BOOLEAN
);
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name TEXT,
    segment TEXT,
    region TEXT,
    state TEXT,
    city TEXT,
    first_order_date DATE,
    last_order_date DATE,
    total_orders INT,
    total_revenue NUMERIC,
    total_profit NUMERIC,
    customer_ltv NUMERIC,
    customer_type TEXT
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    sub_category TEXT
);

SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM products;

--Monthly Revenue
SELECT
order_year,order_month,SUM(sales)
AS monthly_revenue
FROM orders
GROUP BY order_year,order_month
ORDER BY order_year,order_month;

--Monthly Revenue Growth

SELECT
order_year,order_month,SUM(sales)
AS revenue, LAG(SUM(sales))
OVER (ORDER BY order_year,order_month)
AS previous_month_revenue
FROM orders
GROUP BY order_year,order_month;

--Growth Percentage

SELECT
    order_year,
    order_month,
    SUM(sales) AS revenue,
    ROUND(
        (
            (SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY order_year, order_month))
            /
            LAG(SUM(sales)) OVER (ORDER BY order_year, order_month)
        )::NUMERIC * 100,
        2
		    ) AS growth_percentage
FROM orders
GROUP BY order_year, order_month;


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
    SELECT
        order_year,
        order_month,
        SUM(sales) AS revenue
    FROM orders
    GROUP BY order_year, order_month
)
SELECT *
FROM monthly_revenue;

