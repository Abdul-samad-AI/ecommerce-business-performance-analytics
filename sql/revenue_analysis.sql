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