-- Get Revenue by Store(USE CALL)
CREATE OR REPLACE PROCEDURE get_revenue_by_store()
LANGUAGE SQL
AS $$
SELECT 
    store_name,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY store_name
ORDER BY revenue DESC;
$$;

-- Get Top Customers
CREATE OR REPLACE PROCEDURE get_top_customers()
LANGUAGE SQL
AS $$
SELECT 
    customer_id,
    SUM(final_amount) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
$$;

-- Monthly Revenue Report
CREATE OR REPLACE PROCEDURE monthly_revenue_report()
LANGUAGE SQL
AS $$
SELECT 
    year,
    month,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;
$$;

-- Weekend Sales Report
CREATE OR REPLACE PROCEDURE weekend_sales_report()
LANGUAGE SQL
AS $$
SELECT 
    CASE 
        WHEN day_name IN ('Saturday','Sunday')
            THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY day_type;
$$;

CALL weekend_sales_report();