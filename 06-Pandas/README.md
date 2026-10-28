# Retail & Sales Data Analysis with Pandas

## 📌 Project Overview
This project was completed as part of the **Data Technician Bootcamp**. The primary objective was to explore, clean, transform, and analyze complex retail and sales datasets using Python's **Pandas** library. By applying practical data manipulation and visual analysis techniques, this project extracts meaningful business insights regarding sales performance, customer trends, and product metrics.

---

## 🛠️ Key Skills & Tools Demonstrated

* **Data Wrangling & Cleaning:** Standardizing missing values (`fillna()`, `dropna()`), handling duplicates, and converting data types.
* **Selection & Slicing:** Filtering complex conditions, accessing specific rows/columns using label-based (`.loc[]`) and index-based (`.iloc[]`) indexing.
* **Data Transformation:** Aggregating data across groups using `groupby()`, multi-level sorting with `sort_values()`, and creating custom feature columns.
* **Exploratory Data Analysis (EDA):** Uncovering trends, summary statistics, and outlier detection.
* **Data Visualization:** Communicating findings visually using Pandas built-in plotting routines and **Matplotlib**.

---

## 🔍 Workflow & Implementation

### 1. Data Exploration & Cleaning
* Inspected datasets using `.info()`, `.describe()`, and `.shape`.
* Identified and handled missing data points using `.dropna()` for non-recoverable records and `.fillna()` for standardizing category blanks.
* Corrected data types (e.g., parsing dates, converting numerical strings).

### 2. Slicing & Advanced Filtering
* Applied `.loc[]` to filter sales records based on specific regions, date ranges, and product categories.
* Used `.iloc[]` for index-based extraction during batch processing and subset extraction.
* Built Boolean masks to filter high-value transactions and specific customer segments.

### 3. Aggregation & Business Insights
* Used `.groupby()` to aggregate sales performance by region, store location, and category.
* Applied summary functions (`.sum()`, `.mean()`, `.count()`) to compute key performance indicators (KPIs) like average order value and total quarterly revenue.
* Sorted final analytical tables using `.sort_values()` to highlight top-performing products and underperforming stores.

### 4. Data Visualization
* Generated bar charts and line plots using Matplotlib and Pandas `.plot()` to illustrate:
  * Monthly sales growth trends.
  * Top 10 revenue-generating product categories.
  * Regional sales distribution.

---
