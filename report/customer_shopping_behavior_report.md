# Customer Shopping Behavior Analytics Report

## 1. Objective
Analyze shopping transactions to identify customer behavior patterns, sales drivers, and actionable growth opportunities.

## 2. Data Summary
- Time period: Jan 2025 to Mar 2025
- Transactions: 25
- Unique customers: 20
- Core fields: customer demographics, category, pricing, discounts, payment method, and ratings

## 3. Data Preparation
- Handled missing customer age values using median imputation.
- Standardized date type and validated pricing/quantity boundaries.
- Derived `total_amount` as net transaction value post-discount.

## 4. Key Insights
1. Electronics generates the highest revenue despite fewer orders due to high ticket sizes.
2. UPI and Credit Card dominate digital transaction share.
3. Repeated customers (e.g., C001, C006, C014) contribute disproportionate revenue.
4. Discounting improves volume in some categories but can reduce average order value if overused.

## 5. Customer Segmentation
RFM scoring groups customers into:
- **Champion**: high monetary + high frequency + recent activity
- **Potential Loyalist**: medium RFM profile, strong retention potential
- **At Risk**: low frequency/monetary and/or inactive in recent periods

## 6. Business Recommendations
- Run premium cross-sell campaigns for Champion customers.
- Promote category bundles to Potential Loyalists to improve frequency.
- Trigger win-back offers for At Risk customers with personalized discounts.
- Optimize discount strategy by category margin profile.
