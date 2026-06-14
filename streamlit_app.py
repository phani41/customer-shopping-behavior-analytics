import streamlit as st

st.set_page_config(page_title="Customer Shopping Behavior Analytics", layout="wide")

st.title("📊 Customer Shopping Behavior Analytics")

st.markdown("""
### End-to-End Data Analytics Project

This project analyzes retail customer purchasing behavior using:

- Python
- SQL
- Power BI
- Streamlit

The objective is to identify purchasing trends, customer segments, and business opportunities.
""")

col1, col2 = st.columns(2)

with col1:
    st.image("screenshots/dashboard-overview.png")

with col2:
    st.image("screenshots/dashboard-filtered.png")

st.header("Business Questions")

questions = [
    "Revenue by Gender",
    "Average Purchase Analysis",
    "Top Rated Products",
    "Shipping Type Analysis",
    "Subscription Impact",
    "Discount Analysis",
    "Customer Segmentation",
    "Top Products by Category",
    "Repeat Buyer Analysis",
    "Revenue by Age Group"
]

for q in questions:
    st.write(f"✅ {q}")

st.success("Built using Python, SQL, Power BI, and Streamlit")