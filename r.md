# 🛒 Retail Sales Analytics & Customer Insights (2023–2025)

## 📌 Project Overview

This project analyzes retail transaction data from **2023 to 2025** to uncover sales patterns, customer behavior, and product performance.
The goal is to transform raw transaction data into meaningful insights using **Python, Pandas, Seaborn, and Matplotlib**.

The dataset includes **59,542 transactions** across **7 stores** and **2,172 customers**.

---

## 📊 Dataset Summary

| Metric        | Value       |
| ------------- | ----------- |
| Total Rows    | 59,542      |
| Total Columns | 11          |
| Time Period   | 2023 – 2025 |
| Customers     | 2,172       |
| Stores        | 7           |

### Key Columns

* customer_id
* store_name
* transaction_date
* aisle
* product_name
* quantity
* unit_price
* total_amount
* discount_amount
* final_amount
* loyalty_points
* year
* month
* day

---

## 🎯 Project Objectives

* Perform **data cleaning** and preprocessing
* Detect and handle **outliers**
* Conduct **Exploratory Data Analysis (EDA)**
* Identify **sales trends and patterns**
* Analyze **customer purchasing behavior**
* Discover **high-performing stores and products**
* Visualize relationships between key variables

---

## 🧹 Data Cleaning Steps

* Checked missing values
* Converted date columns to datetime format
* Created new time-based features:

  * year
  * month
  * day
* Detected outliers using **IQR method**
* Removed extreme values where necessary
* Exported cleaned dataset

---

## 📈 Exploratory Data Analysis (EDA)

### 🔹 Univariate Analysis

* Final Amount Distribution
* Quantity Distribution
* Unit Price Distribution
* Discount Distribution
* Loyalty Points Distribution

---

### 🔹 Bivariate Analysis

* Sales by Store
* Monthly Sales Trend
* Quantity vs Final Amount
* Discount vs Final Amount
* Sales by Day of Week

---

### 🔹 Multivariate Analysis

* Correlation Heatmap
* Sales Heatmap (Month vs Store)
* Customer Segmentation Analysis
* Advanced Outlier Detection using Boxen Plot

---

## 📊 Key Insights

* Sales are highly influenced by **quantity purchased** and **unit price**
* Certain stores consistently generate higher revenue
* Monthly trends reveal seasonal spikes in sales
* High-value customers accumulate significantly more loyalty points
* Discounts contribute to larger transaction volumes

---

## 🛠 Tools & Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook

---

## 📁 Project Structure

```
Retail-Sales-Analytics/
│
├── data/
│   └── retail_clean.csv
│
├── notebooks/
│   └── retail_analysis.ipynb
│
├── images/
│   └── visualizations.png
│
├── README.md
│
└── requirements.txt
```

---

## 📌 Future Improvements

* Build **customer segmentation model**
* Apply **RFM analysis**
* Create **sales forecasting model**
* Develop interactive dashboard using **Power BI or Tableau**

---

## 📷 Sample Visualizations

Examples include:

* Distribution plots
* Boxplots for outlier detection
* Sales trends over time
* Correlation heatmap
* Product performance charts

---

## 🚀 How to Run This Project

1. Clone the repository:

```
git clone https://github.com/your-username/retail-sales-analytics.git
```

2. Install required libraries:

```
pip install -r requirements.txt
```

3. Open the notebook:

```
jupyter notebook
```

4. Run all cells.

---

## 📬 Contact

If you have feedback or suggestions, feel free to connect.

---
