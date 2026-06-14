# Power BI Dashboard Assets

This folder documents the Power BI implementation for customer shopping behavior analytics.

## Suggested visuals
- KPI cards: Total Revenue, Total Orders, Avg Order Value, Active Customers
- Clustered bar chart: Revenue by Product Category
- Stacked column chart: Revenue by City and Payment Method
- Donut chart: Transaction Share by Payment Method
- Scatter chart: Frequency vs Monetary by Customer Segment
- Slicer filters: Date, City, Product Category, Segment

## Core DAX measures
```DAX
Total Revenue = SUMX('customer_shopping_data_cleaned', 'customer_shopping_data_cleaned'[quantity] * 'customer_shopping_data_cleaned'[unit_price] * (1 - 'customer_shopping_data_cleaned'[discount_pct] / 100))
Total Orders = DISTINCTCOUNT('customer_shopping_data_cleaned'[order_id])
Active Customers = DISTINCTCOUNT('customer_shopping_data_cleaned'[customer_id])
Average Order Value = DIVIDE([Total Revenue], [Total Orders])
```

## Data source
Use `/data/customer_shopping_data_cleaned.csv` as the Power BI import source.
