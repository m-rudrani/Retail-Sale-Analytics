--Retail KPI Summary View
CREATE VIEW retail_kpi_summary AS
SELECT 
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(final_amount) AS total_revenue,
    ROUND(AVG(final_amount),2) AS avg_bill_value,
    SUM(quantity) AS total_items_sold
FROM retail_sales;

 -- Store Performance View
CREATE VIEW store_performance_view AS
SELECT 
    store_name,
    COUNT(*) AS total_transactions,
    SUM(final_amount) AS total_revenue,
    ROUND(AVG(final_amount),2) AS avg_bill_value
FROM retail_sales
GROUP BY store_name;

-- Product Performance View
CREATE VIEW product_performance_view AS
SELECT 
    product_name,
    aisle,
    SUM(quantity) AS total_quantity_sold,
    SUM(final_amount) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(quantity) DESC
    ) AS product_rank
FROM retail_sales
GROUP BY product_name, aisle;

-- Coustomer Summary View 
CREATE VIEW customer_summary_view AS
SELECT 
    customer_id,
    COUNT(*) AS total_orders,
    SUM(final_amount) AS total_spent,
    ROUND(AVG(final_amount),2) AS avg_spent
FROM retail_sales
GROUP BY customer_id;

-- Monthly Sales Trend View
CREATE VIEW monthly_sales_view AS
SELECT 
    year,
    month,
    SUM(final_amount) AS monthly_revenue,
    SUM(quantity) AS items_sold
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;