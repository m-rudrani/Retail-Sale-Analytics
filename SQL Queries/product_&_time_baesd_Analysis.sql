-- TIME BAESD ANALYSIS
-- Monthly Revenue Trend
SELECT 
    year,
    month,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;

-- Revenue By Day of week
SELECT 
    day_name,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY day_name
ORDER BY revenue DESC;

-- Best Sales Month
SELECT 
    month,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;

-- Revenue By Year
SELECT 
    year,
    SUM(final_amount) AS yearly_revenue
FROM retail_sales
GROUP BY year
ORDER BY year;

-- Weekday vs WeekEnd Revenue %
SELECT 
    day_type,
    total_revenue,
    ROUND(
        total_revenue * 100.0 / SUM(total_revenue) OVER (),2
    ) AS revenue_percent
FROM (
    SELECT 
        CASE 
            WHEN day_name IN ('Saturday', 'Sunday') 
                THEN 'Weekend'
            ELSE 'Weekday'
        END AS day_type,
        SUM(final_amount) AS total_revenue
    FROM retail_sales
    GROUP BY day_type
) sub;

-- Weekend vs Weekday by Store Revenue
SELECT 
    store_name,
    CASE 
        WHEN day_name IN ('Saturday', 'Sunday') 
            THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY store_name, day_type
ORDER BY store_name, day_type;


-- PRODUCT PERFORMANCE
-- Top Selling Product
SELECT 
    product_name,
    SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;

-- Top Revenue Generating Product
SELECT 
    product_name,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- Lowest selling product
SELECT 
    product_name,
    SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY product_name
ORDER BY total_quantity ASC
LIMIT 10;

-- Revenue By Aisle
SELECT 
    aisle,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY aisle
ORDER BY revenue DESC;

-- Avg Price Per Product
SELECT 
    product_name,
    AVG(unit_price) AS avg_price
FROM retail_sales
GROUP BY product_name
ORDER BY avg_price DESC;

-- Top Product Per Aisle
SELECT *
FROM (
    SELECT 
        aisle,
        product_name,
        SUM(quantity) AS total_quantity,
        RANK() OVER (
            PARTITION BY aisle
            ORDER BY SUM(quantity) DESC
        ) AS rank_num
    FROM retail_sales
    GROUP BY aisle, product_name
) ranked
WHERE rank_num = 1;