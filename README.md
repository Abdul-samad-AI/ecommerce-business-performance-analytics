# 🛒 E-Commerce Business Performance Analytics

**Python · SQL · PostgreSQL · Power BI**

<p align="center">
  <img src="https://img.shields.io/badge/Python-Data%20Analytics-blue?logo=python" />
  <img src="https://img.shields.io/badge/SQL-PostgreSQL-blue?logo=postgresql" />
  <img src="https://img.shields.io/badge/Power%20BI-Business%20Dashboard-yellow?logo=powerbi" />
  <img src="https://img.shields.io/badge/Status-Completed-success" />
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" width="70"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original.svg" width="70"/>
  <img src="https://raw.githubusercontent.com/microsoft/PowerBI-Icons/main/PNG/Power-BI.png" width="70"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/git/git-original.svg" width="70"/>
</p>

---

## 🚀 Project Overview

This repository contains an **end-to-end E-Commerce Business Performance Analytics project** focused on transforming raw transactional data into **actionable business insights**.

The project follows a **real-world analytics workflow**:

* Data cleaning & feature engineering
* SQL-based business analysis
* Executive-level Power BI dashboard

🎯 **Objective:**
Enable data-driven decision-making by analyzing **sales performance, customer behavior, profitability, and growth opportunities**.

---

## 🧠 Business Problem Statement

Modern e-commerce organizations require continuous monitoring of **revenue, customers, and profitability** to stay competitive.

This project answers key business questions:

* 📈 How are **revenue and profit trending** over time?
* 👥 Which **customers contribute most** to total revenue?
* 🔁 What is the **repeat vs new customer** distribution?
* 🛍 Which **product categories and regions** perform best?
* 🚀 Where are the **growth and optimization opportunities**?

---

## 🧩 Solution Approach

### 1️⃣ Data Preparation (Python)

* Cleaned and validated raw transactional data
* Handled missing values, date parsing, and outliers
* Engineered time-based and customer-level features

### 2️⃣ Data Modeling

* Designed **fact and dimension tables**
* Applied **star schema principles**
* Created analytics-ready datasets for SQL & BI

### 3️⃣ SQL-Based Business Analysis (PostgreSQL)

* Revenue and profitability analysis
* Customer Lifetime Value (LTV) calculation
* Repeat vs new customer segmentation
* Category-wise and region-wise performance
* Extensive use of **joins, CTEs, aggregations, and window functions**

### 4️⃣ Data Visualization (Power BI)

* Executive KPI dashboard
* Time-series revenue and profit trends
* Category, region, and customer segmentation views
* Interactive filters and decomposition tree analysis

---

## 🛠️ Technology Stack

| Category        | Tools                         |
| --------------- | ----------------------------- |
| Programming     | Python (pandas, NumPy)        |
| Database        | PostgreSQL                    |
| SQL             | Joins, CTEs, Window Functions |
| BI & Reporting  | Power BI                      |
| Version Control | Git & GitHub                  |

---

## 📂 Dataset Information

* **Source:** Kaggle – Sample Superstore Dataset
* **Data Type:** E-commerce transactional data
* **Entities:** Orders, Customers, Products, Regions
* **Metrics:** Sales, Profit, Quantity, Discounts

---

## 📊 Key Metrics & KPIs

* Total Revenue
* Total Profit
* Profit Margin
* Monthly Revenue & MoM Growth
* Customer Lifetime Value (LTV)
* Repeat vs New Customers
* Category-wise & Region-wise Performance

---

## Project Structure

## 📈 Power BI Dashboard

The Power BI dashboard is designed for **business stakeholders and decision-makers**.

### Dashboard Features

* High-level KPI summary
* Revenue & profit trends
* Category and regional comparisons
* Customer segmentation & retention insights
* Decomposition tree for root-cause analysis

📁 **Dashboard file:**
`powerbi/ecommerce_dashboard.pbix`

📷 **Dashboard previews:**
`powerbi/screenshots/`

> Screenshots are included for quick review by recruiters who may not have Power BI installed.

---

## 🗂️ Project Structure

```
ecommerce-business-performance/
├── data/
│   ├── raw/              # Original dataset (unchanged)
│   ├── processed/        # Cleaned and feature-engineered data
│   └── sql_exports/      # SQL query outputs
│   ├── raw/                # Original dataset
│   ├── processed/          # Cleaned & feature-engineered data
│   └── sql_exports/        # SQL outputs for BI
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_feature_engineering.ipynb
│   └── 04_validation_checks.ipynb
│
├── sql/
│   ├── schema.sql
│   ├── revenue_analysis.sql
│   ├── customer_analysis.sql
│   └── category_region_analysis.sql
├── powerbi/
│   ├── ecommerce_dashboard.pbix
│   └── screenshots/
├── reports/
│   └── business_insights.md
│
├── powerbi/
│   ├── ecommerce_dashboard.pbix
│   └── screenshots/
│
├── reports/
│   └── business_insights.md
│
├── README.md
├── requirements.txt
└── .gitignore
```


## 💡 Key Business Insights

✔ Revenue trends show **seasonality and growth patterns**
✔ **Repeat customers** contribute a higher share of total revenue
✔ Some categories generate **high revenue but lower profit margins**
✔ Regional performance varies, enabling **targeted business strategies**

---

## 👨‍💻 Author

**Abdul Samad**
🎓 B.Tech – Artificial Intelligence & Machine Learning
📍 India

🔗 *Open to Data Analyst, Business Analyst & Analytics Engineer roles*

---
