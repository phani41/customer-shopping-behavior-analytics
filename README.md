# Customer Shopping Behavior Analytics

End-to-end data analytics project that explores retail customer shopping patterns using Python, SQL, and Power BI. The goal is to understand what drives purchases, how customer segments behave, and which factors influence revenue, reviews, discounts, and repeat buying.

## Project Overview

This repository contains a cleaned customer shopping dataset, a notebook for exploratory analysis, a set of SQL business questions, and a Power BI dashboard file for visualization and reporting. The analysis focuses on practical retail questions such as:

- Revenue by gender and age group
- Average purchase amounts across customer segments
- Product performance by rating and purchase frequency
- Shipping method comparisons
- Subscription and discount behavior
- Repeat buyer patterns and customer loyalty

## Dataset

The analysis is built around `customer_behavior_cleaned.csv`, which includes customer and purchase attributes such as:

- Age and age group
- Gender
- Item purchased and category
- Purchase amount
- Review rating
- Shipping type
- Subscription status
- Discount applied
- Previous purchases

## Repository Contents

- `customer_behavior_cleaned.csv` - cleaned dataset used for analysis
- `phani.ipynb` - notebook for data exploration and analysis workflow
- `sql/customer_behavior_queries.sql` - SQL questions and queries used for insights
- `Customer.pbix` - Power BI report file for dashboarding
- `screenshots/` - dashboard preview images

## Analysis Questions

The SQL file covers a set of exploratory and business-facing questions, including:

1. Revenue comparison between male and female customers
2. Average spend by gender
3. Top products by average review rating
4. Purchase behavior by shipping method
5. Subscription status vs. spend and revenue
6. Discount usage rate
7. Customer segmentation based on previous purchases
8. Top purchased products within each category
9. Repeat buyer behavior vs. subscription status
10. Revenue contribution by age group

## How To Use

1. Open `customer_behavior_cleaned.csv` in Python, SQL, or a BI tool for analysis.
2. Run the queries in `sql/customer_behavior_queries.sql` against the customer table.
3. Open `phani.ipynb` to review the Python-based exploratory analysis and visuals.
4. Open `Customer.pbix` in Power BI to explore the dashboard and filters.

## Setup & Run

Install the Python dependencies and run the included Streamlit demo app locally:

```bash
python -m pip install -r requirements.txt
streamlit run streamlit_app.py
```

The app will be available by default at http://localhost:8501 when running locally.

## Dashboard Previews

The `screenshots/` folder contains dashboard images that show the main report views and filtered states.

## Report

A PDF version of this analysis is available in the `report` folder:

- [Customer_Behavior_Analytics_Report.pdf](report/Customer_Behavior_Analytics_Report.pdf)


## Project Goal

The overall objective is to turn raw shopping data into actionable retail insights that can support marketing, product, and customer retention decisions.
