CREATE TABLE retail_sales (
    customer_id INT,
    store_name VARCHAR(100),
    transaction_date DATE,
    aisle VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    unit_price NUMERIC(10,2),
    total_amount NUMERIC(10,2),
    discount_amount NUMERIC(10,2),
    final_amount NUMERIC(10,2),
    loyalty_points INT,
    year INT,
    month INT,
    day_name VARCHAR(20)
);


SELECT * FROM retail_sales
LIMIT 5;

ALTER TABLE retail_sales
ADD COLUMN month_name VARCHAR(15);
ADD COLUMN month_year DATE;


UPDATE retail_sales
SET 
year = EXTRACT(YEAR FROM transaction_date),
month = EXTRACT(MONTH FROM transaction_date),
month_name = TRIM(TO_CHAR(transaction_date, 'Month')),
day_name = TRIM(TO_CHAR(transaction_date, 'Day')),
month_year = DATE_TRUNC('month', transaction_date)::DATE;



