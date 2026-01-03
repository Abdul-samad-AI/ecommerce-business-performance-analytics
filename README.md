# E-Commerce Business Performance Analytics

## Overview
This repository contains an end-to-end **E-Commerce Business Performance Analytics** project designed to analyze transactional sales data and derive actionable business insights.  
The project follows a structured analytics workflow, transforming raw data into a scalable analytical model and presenting insights through an executive-level dashboard.

The primary objective of this project is to demonstrate practical skills in **data preparation, SQL-based business analysis, and data visualization**, aligned with real-world analytics use cases.

---

## Business Problem Statement
E-commerce organizations require continuous monitoring of sales performance, customer behavior, and profitability to make informed strategic decisions.  
This project addresses the following key business questions:

- How is revenue and profit trending over time?
- Which customers contribute the most to overall revenue?
- What is the distribution of repeat vs new customers?
- Which product categories and regions perform best?
- Where are potential opportunities for growth or optimization?

---

## Solution Approach
The project is implemented using a layered analytics approach:

1. **Data Preparation (Python)**  
   - Cleaning and validating raw transactional data  
   - Handling missing values, date parsing, and outlier identification  
   - Feature engineering for time-based and customer-level metrics  

2. **Data Modeling**  
   - Design of fact and dimension tables following star schema principles  
   - Creation of analytics-ready datasets for SQL querying and BI consumption  

3. **SQL-Based Analysis (PostgreSQL)**  
   - Revenue and profitability analysis  
   - Customer Lifetime Value (LTV) computation  
   - Repeat vs new customer segmentation  
   - Category-wise and region-wise performance evaluation  
   - Use of joins, aggregations, and window functions  

4. **Data Visualization (Power BI)**  
   - Executive KPI dashboard  
   - Time-series trend analysis  
   - Category, region, and customer segmentation views  
   - Interactive filters and decomposition analysis  

---

## Technology Stack
- **Python**: Pandas, NumPy (data cleaning and feature engineering)  
- **PostgreSQL**: relational data storage and querying  
- **SQL**: joins, aggregations, window functions, CTEs  
- **Power BI**: interactive dashboards and business reporting  

---

## Dataset Information
- **Source**: Kaggle – Sample Superstore Dataset  
- **Data Type**: E-commerce transactional data  
- **Key Entities**: Orders, Customers, Products, Regions  
- **Metrics**: Sales, Profit, Quantity, Discounts  

---

## Key Metrics and KPIs
- Total Revenue  
- Total Profit  
- Profit Margin  
- Monthly Revenue and Month-over-Month Growth  
- Customer Lifetime Value (LTV)  
- Repeat vs New Customers  
- Category-wise and Region-wise Performance  

---

## Power BI Dashboard
The Power BI dashboard is designed for business stakeholders and provides:

- High-level KPI summary for quick performance assessment  
- Revenue and profit trends over time  
- Comparative analysis across product categories and regions  
- Customer segmentation and retention insights  
- Decomposition tree for root-cause analysis of revenue changes  

Dashboard file:  
powerbi/ecommerce_dashboard.pbix  

The Power BI file contains the complete data model, DAX measures, relationships, and visualizations used in the analysis. It is included to allow technical reviewers and interviewers to explore the dashboard interactively and review the underlying business logic.

Dashboard screenshots are available in:  
powerbi/screenshots/  

The screenshots provide a quick visual overview of the dashboard for users who may not have Power BI installed. They highlight key views such as KPI summary, revenue trends, category and regional performance, customer segmentation, and decomposition analysis.

---

## Project Structure
```
ecommerce-business-performance/
├── data/
│   ├── raw/              # Original dataset (unchanged)
│   ├── processed/        # Cleaned and feature-engineered data
│   └── sql_exports/      # SQL query outputs
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_feature_engineering.ipynb
│   └── 04_validation_checks.ipynb
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
├── README.md
├── requirements.txt
└── .gitignore
```


## Key Business Insights
- Revenue trends reveal seasonality and growth patterns across time periods  
- Repeat customers contribute a disproportionately higher share of total revenue  
- Certain product categories generate high revenue but lower profit margins  
- Regional performance varies significantly, indicating opportunities for targeted strategies  

---

## Author
**Abdul Samad**  
B.Tech – Artificial Intelligence & Machine Learning 

---

## Notes
This project is intended for **educational and portfolio purposes**, demonstrating practical data analytics skills applicable to Data Analyst and Analytics Engineer roles.
