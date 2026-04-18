-- Index on Customer ID
CREATE INDEX idx_customer_id
ON retail_sales(customer_id);

-- Index on Transaction Date
CREATE INDEX idx_transaction_date
ON retail_sales(transaction_date);

-- Composite Index — Store + Date
CREATE INDEX idx_store_date
ON retail_sales(store_name, transaction_date);

-- Index on Product Name
CREATE INDEX idx_product_name
ON retail_sales(product_name);

-- Index on Aisle
CREATE INDEX idx_aisle
ON retail_sales(aisle);