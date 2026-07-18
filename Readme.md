#Telco Customer Churn Analysis

End-to-end customer churn analysis pipeline using MySQL, Python, and Power BI — identifying key churn drivers, customer risk segments, and revenue impact through data cleaning, exploratory analysis, and an interactive AI-powered dashboard.

## 📊 Project Overview

Customer churn is one of the most critical metrics for subscription-based businesses. This project analyzes the Telco Customer Churn dataset (7,000+ records) to answer:
- What percentage of customers churn, and how much revenue does that represent?
- Which customer segments are most at risk?
- What factors most strongly influence churn?

## 🛠️ Tools Used

- **MySQL** — database setup, data storage, and exploratory SQL queries
- **Python** (Pandas, Seaborn, Matplotlib) — data cleaning, feature engineering, and EDA
- **Power BI** — interactive dashboard with DAX measures and AI-powered Key Influencers analysis

## 🔑 Key Insights

- **26.6% overall churn rate**, representing **$2.86M in revenue at risk**
- **Month-to-month contract customers are 6.3x more likely to churn** than average — the single strongest churn driver
- Customers with **fiber optic internet** (2.88x) and **less than 1 year of tenure** (2.78x) also show significantly elevated churn risk
- The highest-risk segment — month-to-month + fiber optic + new customers — shows a **70.2% churn rate**, compared to a 6.78% baseline among other segments

## 📁 Project Structure
telco-churn-analysis/
├── sql/churn_analysis.sql          # Database setup + exploratory queries
├── python/churn_eda.ipynb          # Data cleaning, feature engineering, EDA
├── data/telco_churn_cleaned.csv    # Cleaned dataset (output of Python pipeline)
├── powerbi/dashboard.pbix          # Interactive Power BI dashboard
└── images/dashboard_screenshot.png # Dashboard preview




## 📈 Dashboard Preview

![Dashboard Screenshot](images/dashboard_screenshot.png)

## 🔍 Methodology

1. **Data Storage (MySQL)** — Loaded raw dataset into a MySQL database, wrote exploratory queries to understand churn distribution across contract types, tenure, and charges
2. **Data Cleaning (Python)** — Connected to MySQL via `mysql-connector-python`, handled missing/blank values in `TotalCharges`, converted data types
3. **Feature Engineering** — Created `TenureGroup` and `ChargeGroup` categorical bins, and a numeric `ChurnFlag` for correlation analysis
4. **EDA** — Visualized churn distribution across contract type, tenure, payment method, and internet service using Seaborn; built a correlation heatmap to statistically confirm tenure's relationship with churn
5. **Dashboard (Power BI)** — Built DAX measures (Churn Rate %, Revenue at Risk, Avg Tenure), interactive visuals with cross-filtering, and a Key Influencers AI visual to automatically surface the strongest churn predictors

## 🚀 How to Run

1. Import `telco_churn_cleaned.csv` into MySQL using the schema in `sql/churn_analysis.sql`
2. Open `python/churn_eda.ipynb` in Jupyter Notebook to reproduce the cleaning and EDA steps
3. Open `powerbi/dashboard.pbix` in Power BI Desktop to explore the interactive dashboard
