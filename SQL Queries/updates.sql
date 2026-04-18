SELECT definition 
FROM pg_views 
WHERE viewname = 'monthly_sales_view';

 SELECT year,
    month,
    sum(final_amount) AS monthly_revenue,
    sum(quantity) AS items_sold
   FROM retail_sales
  GROUP BY year, month
  ORDER BY year, month;


  
SELECT * FROM retail_sales
LIMIT 5;

SELECT 
transaction_date,
DATE_TRUNC('month', transaction_date)
FROM retail_sales
LIMIT 10;

ALTER TABLE retail_sales
ADD COLUMN year INT,
ADD COLUMN month INT,
ADD COLUMN day_name VARCHAR(20),
ADD COLUMN month_year DATE;

UPDATE retail_sales
SET 
year = EXTRACT(YEAR FROM transaction_date),
month = EXTRACT(MONTH FROM transaction_date),
day_name = TRIM(TO_CHAR(transaction_date, 'Day')),
month_year = DATE_TRUNC('month', transaction_date)::DATE;

ALTER TABLE retail_sales
ADD COLUMN month_name VARCHAR(15);

UPDATE retail_sales
SET month_name = TO_CHAR(transaction_date, 'Month');

SELECT 
transaction_date,
year,
month,
day_name,
month_name,
month_year
FROM retail_sales
LIMIT 10;