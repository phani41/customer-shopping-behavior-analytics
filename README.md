# Customer Shopping Behavior Analytics

An end-to-end data analytics portfolio project that analyzes customer shopping behavior using **Python (Pandas)**, **SQL**, and **Power BI-ready assets**.

## Project Overview
This project demonstrates a complete analytics workflow:
1. Data cleaning and preprocessing in Python using Pandas
2. Exploratory Data Analysis (EDA) to uncover trends
3. SQL-driven business insight queries
4. Customer segmentation using an RFM-style approach
5. Dashboard planning assets and screenshots for Power BI storytelling
6. Business reporting and presentation-ready summaries

## Architecture / Workflow
Raw Data (`data/customer_shopping_data.csv`)  
→ Cleaning + Feature Engineering (`notebooks/customer_shopping_behavior_analysis.ipynb`)  
→ Cleaned Data (`data/customer_shopping_data_cleaned.csv`)  
→ SQL Insights (`sql/business_insights.sql`, `sql/customer_segmentation.sql`)  
→ Dashboard Layer (`dashboard/`, `screenshots/`)  
→ Stakeholder Outputs (`report/`, `presentation/`)

## Repository Structure
- `/data` - Raw and cleaned datasets
- `/notebooks` - Jupyter notebook for cleaning, EDA, and segmentation
- `/sql` - SQL scripts for business insights and customer segmentation
- `/dashboard` - Power BI dashboard specifications and DAX measures
- `/report` - Project report documentation
- `/presentation` - Presentation outline for business stakeholders
- `/screenshots` - Dashboard snapshot images

## Dataset Description
The dataset includes transaction-level customer shopping records with fields such as:
- Customer demographics: `customer_id`, `gender`, `age`, `city`
- Transaction details: `order_id`, `order_date`, `product_category`, `quantity`, `unit_price`, `discount_pct`
- Payment and experience: `payment_method`, `rating`
- Engineered field: `total_amount` (net revenue per transaction)

## Key Analysis Modules
### 1) Data Cleaning & Preprocessing (Pandas)
- Handles missing age values with median imputation
- Converts order date into datetime
- Applies basic outlier/value sanity checks on quantity, price, and discount
- Creates `total_amount` for downstream analytics

### 2) Exploratory Data Analysis (EDA)
- Sales by city and product category
- Payment behavior distribution
- Discount band impact on average order value

### 3) SQL Business Insights
Use files in `/sql`:
- `business_insights.sql` for revenue, category, payment, and discount analyses
- `customer_segmentation.sql` for SQL-based RFM segmentation output

### 4) Customer Segmentation
RFM-style scoring groups customers into:
- **Champion**
- **Potential Loyalist**
- **At Risk**

## Power BI Dashboard Assets
- Dashboard planning notes and DAX measures: `dashboard/README.md`
- Snapshot images for reporting context:
  - `screenshots/dashboard_revenue_by_category.png`
  - `screenshots/dashboard_frequency_vs_monetary.png`

## Business Insights (Sample)
- Electronics is a major revenue driver due to high average ticket value.
- Digital payments (UPI/Credit Card) account for a large transaction share.
- Repeat customers contribute a meaningful portion of total sales.
- Discount strategy should be optimized by category-level margin behavior.

## Recommendations
1. Prioritize retention and upsell campaigns for Champion customers.
2. Nurture Potential Loyalists with personalized bundles and loyalty nudges.
3. Run win-back campaigns for At Risk segments using targeted offers.
4. Balance discounts with profitability by monitoring order value impact.

## How to Use
1. Review dataset files under `/data`
2. Open and run `notebooks/customer_shopping_behavior_analysis.ipynb`
3. Execute queries from `/sql` against the cleaned dataset table
4. Build/replicate dashboard visuals using `dashboard/README.md`
5. Use `/report` and `/presentation` artifacts for stakeholder communication

---
This repository is designed for **GitHub portfolio presentation** and **recruiter review**, showcasing applied analytics skills across data preparation, SQL analysis, segmentation, and BI storytelling.
