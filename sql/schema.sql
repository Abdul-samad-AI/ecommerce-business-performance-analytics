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