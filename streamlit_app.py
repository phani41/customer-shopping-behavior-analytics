import streamlit as st

st.set_page_config(page_title="Customer Shopping Behavior Analytics")

st.title("📊 Customer Shopping Behavior Analytics")

st.markdown("""
### Project Overview

This project analyzes retail customer shopping behavior using:

- Python
- SQL
- Power BI

The objective is to identify customer purchasing trends,
revenue drivers, subscription patterns, and business insights.
""")

st.header("Dashboard Overview")

st.image("screenshots/dashboard-overview.png")

st.header("Filtered Dashboard")

st.image("screenshots/dashboard-filtered.png")

st.header("Business Questions")

questions = [
    "Revenue by Gender",
    "Average Purchase by Gender",
    "Top Rated Products",
    "Shipping Analysis",
    "Subscription Impact",
    "Discount Analysis",
    "Customer Segmentation",
    "Top Products by Category",
    "Repeat Buyer Analysis",
    "Revenue by Age Group"
]

for q in questions:
    st.write("•", q)

st.success("End-to-End Data Analytics Project using Python, SQL and Power BI")