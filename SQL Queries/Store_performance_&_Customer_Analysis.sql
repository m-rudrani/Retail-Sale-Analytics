-- STORE PERFORMANCE ANALYSIS

-- Revenue by store
SELECT 
    store_name,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY store_name
ORDER BY revenue DESC;

-- Average bill per Store
SELECT 
    store_name,
    AVG(final_amount) AS avg_bill
FROM retail_sales
GROUP BY store_name
ORDER BY avg_bill DESC;

-- Total Transaction per Store
SELECT 
	store_name,
	COUNT(*) AS transactions
FROM retail_sales
GROUP BY store_name
ORDER BY transactions DESC;

-- Store with Highest Revenue Value
SELECT 
	store_name,
	SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY store_name
ORDER BY revenue
LIMIT 1;

-- Revenue By Store %
SELECT 
	store_name,
	SUM(final_amount) AS revenue,
	ROUND(
		SUM(final_amount) * 100/ SUM(SUM(final_amount)) OVER (),2
	)AS revenue_percent
FROM retail_sales
GROUP BY store_name
ORDER BY revenue DESC;

-- CUSTOMER ANALYSIS
-- Customer by Spending
SELECT 
    customer_id,
    SUM(final_amount) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Average Spending per Customer
SELECT 
    customer_id,
    AVG(final_amount) AS avg_spent
FROM retail_sales
GROUP BY customer_id

-- Customers with Most Purchases
SELECT 
    customer_id,
    COUNT(*) AS total_purchases
FROM retail_sales
GROUP BY customer_id
ORDER BY total_purchases DESC
LIMIT 10;
ORDER BY avg_spent DESC;

-- Customer Spending Above average
SELECT 
    customer_id,
    SUM(final_amount) AS total_spent
FROM retail_sales
GROUP BY customer_id
HAVING 
    SUM(final_amount) >
    (
        SELECT AVG(final_amount)
        FROM retail_sales
    )
ORDER BY total_spent DESC
Limit 5;

-- MOST LOYAL Customers
SELECT 
    customer_id,
    SUM(loyalty_points) AS total_points
FROM retail_sales
GROUP BY customer_id
ORDER BY total_points DESC
LIMIT 5;