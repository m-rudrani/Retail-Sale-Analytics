-- Sales Category 
SELECT 
    CASE 
        WHEN final_amount < 50 THEN 'Low Sale'
        WHEN final_amount BETWEEN 50 AND 200 THEN 'Medium Sale'
        ELSE 'High Sale'
    END AS sales_category,
	 RANK() OVER (
        ORDER BY SUM(final_amount) DESC
    ) AS spending_rank,
    COUNT(*) AS transaction_count,
    SUM(final_amount) AS total_revenue
FROM retail_sales
GROUP BY sales_category
ORDER BY total_revenue DESC;

-- Discount Usage Classification
SELECT 
    CASE 
        WHEN discount_amount = 0 THEN 'No Discount'
        ELSE 'Discount Applied'
    END AS discount_status,
    COUNT(*) AS total_transactions,
    SUM(final_amount) AS revenue
FROM retail_sales
GROUP BY discount_status;

-- Weekly Revenue With Growth Label
SELECT 
    day_name,
    SUM(final_amount) AS daily_revenue,
    SUM(SUM(final_amount)) OVER (
        ORDER BY day_name
    ) AS running_total,
    CASE 
        WHEN SUM(final_amount) > 
             LAG(SUM(final_amount)) OVER (
                 ORDER BY day_name
             )
        THEN 'Growth'
        ELSE 'Decline'
    END AS revenue_trend
FROM retail_sales
GROUP BY day_name;


SELECT
-- Regular Buyer
SELECT 
    customer_id,
    COUNT(*) AS total_orders,
    DENSE_RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS purchase_rank,
    CASE 
        WHEN COUNT(*) >= 20 THEN 'Frequent Buyer'
        WHEN COUNT(*) BETWEEN 10 AND 19 
            THEN 'Regular Buyer'
        ELSE 'Occasional Buyer'
    END AS customer_type
FROM retail_sales
GROUP BY customer_id;

-- Top Customer per Store
SELECT *
FROM (
    SELECT 
        store_name,
        customer_id,
        SUM(final_amount) AS total_spent,
        RANK() OVER (
            PARTITION BY store_name
            ORDER BY SUM(final_amount) DESC
        ) AS customer_rank
    FROM retail_sales
    GROUP BY store_name, customer_id
		) ranked
WHERE customer_rank <= 5;

-- Product Sales Contribution %
SELECT 
    product_name,
    SUM(quantity) AS total_quantity,
    ROUND(
        SUM(quantity) * 100.0 /
        SUM(SUM(quantity)) OVER (),
        2
    ) AS contribution_percent,
    CASE 
        WHEN ROUND(
            SUM(quantity) * 100.0 /
            SUM(SUM(quantity)) OVER (),
            2
        ) > 5
        THEN 'High Contribution'
        ELSE 'Low Contribution'
    END AS contribution_type
FROM retail_sales
GROUP BY product_name;

-- Monthly Revenue Rank Performance 
SELECT 
    year,
    month,
    SUM(final_amount) AS monthly_revenue,
    RANK() OVER (
        ORDER BY SUM(final_amount) DESC
    ) AS revenue_rank,
    CASE 
        WHEN RANK() OVER (
            ORDER BY SUM(final_amount) DESC
        ) <= 3
        THEN 'Top Month'
        ELSE 'Normal Month'
    END AS month_category
FROM retail_sales
GROUP BY year, month;

