# 🛒 Retail Sales Analytics Project

## 📌 Project Overview

This project demonstrates a complete end-to-end Retail Sales Analytics workflow using **Python, PostgreSQL, and Power BI**. The goal of the project is to transform raw retail transaction data into meaningful business insights through structured data processing and interactive dashboards.

The project simulates a real-world retail environment and focuses on customer behavior, product performance, and sales trends.

---

# 🎯 Objectives

- Clean and transform raw retail transaction data
- Store structured data in PostgreSQL database
- Perform SQL-based analytical transformations
- Build interactive Power BI dashboards
- Generate business insights related to customers, products, and stores

---

# 🧰 Tools & Technologies Used

## Programming
- Python
- Pandas
- NumPy

## Database
- PostgreSQL
- SQL (Joins, Aggregations, Window Functions)

## Visualization
- Power BI
- DAX Measures
- Interactive Dashboard Design

---

# 📊 Dataset Information

- **Total Rows:** ~57,000+ transactions
- **Time Period:** 2023 – 2025
- **Customers:** ~2,000+
- **Stores:** 9 
- **Product Categories:** Multiple aisles and products

## Main Columns

- customer_id
- store_name
- transaction_date
- aisle
- product_name
- quantity
- unit_price
- total_amount
- discount_amount
- final_amount
- loyalty_points

---

# 🔄 End-to-End Workflow

The project follows a structured data pipeline:

**Python → PostgreSQL → Power BI**

## Step 1 — Data Cleaning (Python)

Raw retail data was cleaned and transformed using Python.

### Key Operations:

- Removed duplicate records
- Handled missing values
- Converted date formats
- Created derived columns:
  - year
  - month
  - day_name
  - month_year
- Calculated financial columns
- Standardized categorical values
- Generated loyalty points logic

### Output File:

```
retail_clean.csv
```

---

## Step 2 — Database Storage (PostgreSQL)

Cleaned data was loaded into PostgreSQL for structured querying.

### Database Name:

```
retail_project
```

### Main Table:

```
retail_sales
```

### SQL Tasks Performed:

- Data loading using COPY command
- Aggregation queries
- Group By analysis
- Window function analysis
- Customer-level summary creation

### Created SQL View:

```
customer_summary_view
```

This view aggregates customer-level metrics such as:

- Total Spend
- Transaction Count
- Average Spend
- Loyalty Points Summary

---

## Step 3 — Data Visualization (Power BI)

Power BI was connected directly to PostgreSQL database to build interactive dashboards.

### Key Features Implemented:

- KPI Cards
- Interactive Filters
- Customer Segmentation
- Pareto Analysis (80/20 rule)
- Retention Analysis
- Store Comparison
- Product Performance Analysis

---

# 📈 Dashboard Pages

## 🏠 Page 1 — Home Dashboard

### KPIs Displayed:

- Total Revenue
- Total Customers
- Total Transactions
- Average Order Value
- Total Loyalty Points

### Visuals:

- KPI Cards
- Monthly Revenue Trend
- Navigation Buttons

---

## 📦 Page 2 — Sales & Product Analysis

### Visuals:

- Revenue by Product
- Revenue by Aisle
- Store Performance Comparison
- Monthly Sales Trend
- Weekend vs Weekday Sales

### Insights:

- Top-selling products
- High-performing categories
- Seasonal sales trends

---

## 👥 Page 3 — Customer Analysis

### Visuals:

- Customer Lifetime Value (CLV)
- Customer Value Segmentation
- Pareto Analysis (Top Customers)
- Customer Contribution %
- Retention Rate by Month

### Customer Segmentation:

Customers are categorized into:

- Low Value Customers
- Medium Value Customers
- High Value Customers

---

# 📊 Key Business Insights

This dashboard helps answer critical business questions such as:

- Which customers generate the most revenue?
- Which products drive the highest sales?
- Which stores perform best?
- How loyal are customers over time?
- What percentage of customers drive 80% of revenue?

---

# ⚡ Performance Optimization

- SQL views used for pre-aggregation
- PostgreSQL used for scalable data storage
- Optimized DAX measures used in Power BI

---

# 📁 Project Folder Structure

```
Retail-Sales-Analytics/
│
├── data/
│   └── retail_clean.csv
│
├── python/
│   └── data_cleaning.py
│
├── sql/
│   └── retail_queries.sql
│
├── powerbi/
│   └── Retail_Dashboard.pbix
│
├── screenshots/
│   ├── home_dashboard.png
│   ├── sales_dashboard.png
│   └── customer_dashboard.png
│
├── README.md
└── MDD_Retail_Project.pdf
```

---

# 📷 Dashboard Screenshots

(Add screenshots here)

## Home Dashboard

[Insert Screenshot]

## Sales Dashboard

[Insert Screenshot]

## Customer Dashboard

[Insert Screenshot]

---

# 🚀 How to Run This Project

## Step 1 — Run Python Cleaning Script

Clean raw data using Python.

```
python data_cleaning.py
```

This generates:

```
retail_clean.csv
```

---

## Step 2 — Load Data into PostgreSQL

Use COPY command:

```
COPY retail_sales
FROM 'file_path/retail_clean.csv'
DELIMITER ','
CSV HEADER;
```

---

## Step 3 — Connect Power BI

- Connect to PostgreSQL database
- Load tables and views
- Refresh dashboard

---

# 📌 Skills Demonstrated

## Technical Skills

- Python Data Cleaning
- SQL Query Development
- PostgreSQL Database Handling
- Power BI Dashboard Development
- DAX Calculations

## Analytical Skills

- Customer Segmentation
- Pareto Analysis
- Retention Analysis
- KPI Development
- Business Intelligence Reporting

---

# 🔮 Future Enhancements

Possible improvements:

- Add product cost data for profit analysis
- Add RFM customer segmentation
- Implement forecasting models
- Add regional mapping visuals
- Automate data refresh pipelines

---

# 🏁 Project Outcome

This project demonstrates a complete **Retail Business Intelligence pipeline** from raw data processing to executive-level dashboard reporting.

The final output enables data-driven decision-making using interactive analytics and real-world retail insights.

