-- Total Transactions
SELECT COUNT(*) As total_transactions 
FROM retail_sales;
--57491


--  Total Unique Customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales;
-- 2172

-- Total Revenue Generated
SELECT SUM(final_amount) AS total_revenue
FROM retail_sales;
-- 4,300,566.71 (4.30 M)

-- Average Bill Value 
SELECT AVG(final_amount) AS avg_bill_amount
FROM retail_sales;
-- 74.80

-- Total Quantity sold
SELECT SUM(quantity) AS total_items_sold
FROM retail_sales;
-- 127941

