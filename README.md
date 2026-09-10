# 📊 E-commerce Sales & Profit Analysis

An end-to-end e-commerce data analysis project — from raw, messy data to a cleaned dataset, SQL-based business insights, and an interactive Power BI dashboard.

## 📌 Project Overview

This project analyzes e-commerce order data to uncover insights into sales performance, profitability, customer behavior, and order fulfillment. It covers the full analytics workflow:

1. **Data Cleaning (Python)** — Cleaned a raw, unclean e-commerce dataset using Pandas.
2. **Data Analysis (SQL)** — Queried the cleaned data in MySQL to answer key business questions.
3. **Data Visualization (Power BI)** — Built an interactive dashboard to explore trends and KPIs visually.

## 🗂️ Dataset

The dataset contains e-commerce order-level records with fields including:

| Column | Description |
|---|---|
| `Order_ID` | Unique identifier for each order |
| `Order_Date`, `Delivery_Date` | Order and delivery timestamps |
| `Customer_Name`, `Email`, `Phone` | Customer details |
| `City`, `State` | Customer location |
| `Product`, `Category` | Product purchased and its category |
| `Qty`, `Unit_Price`, `Discount` | Order quantity, price, and discount applied |
| `Payment_Mode` | Payment method used (UPI, Card, COD, Wallet, NetBanking) |
| `Order_Status` | Delivered / Pending / Cancelled / Returned |
| `Sales`, `Net_Amount`, `Profit` | Calculated financial metrics |
| `Month`, `Year`, `Weekday` | Derived time features |

## 🧹 Data Cleaning (`Ecommerce_Analysis.ipynb`)

The raw dataset (`Ecommerce_Unclean_Project.xlsx`) was cleaned and transformed using Python (Pandas), including:

- Removed duplicate records
- Standardized missing values (`N/A`, `NULL`, blanks → `NaN`)
- Trimmed extra whitespace and applied proper casing to text fields
- Validated email format and removed invalid entries
- Converted date columns to proper datetime format
- Converted numeric columns (`Qty`, `Unit_Price`, `Discount`) to numeric types
- Removed invalid records (e.g., negative quantities)
- Filled missing values (discounts, phone numbers, delivery dates)
- **Feature engineering:**
  - `Sales` = Qty × Unit Price
  - `Net_Amount` = Sales − Discount
  - `Profit` = 20% of Net Amount
  - `Month`, `Year`, `Weekday` extracted from Order Date
- Exported the cleaned dataset to `Clean_Ecommerce.csv` and loaded it into a MySQL database for querying

## 🔍 SQL Analysis (`Ecommerce_analysis.sql`)

Business questions answered using SQL queries on the cleaned `orders` table:

- Total number of orders
- Total sales revenue
- Top-selling products by revenue
- Top-performing cities by sales
- Monthly sales trends
- Most profitable products
- Order distribution by payment mode
- List of cancelled orders

## 📈 Power BI Dashboard (`Ecommerce_Dashboard.pbix`)

An interactive dashboard visualizing key metrics:

- **KPI Cards:** Total Sales, Total Profit, Total Orders, Average Order Value
- **Breakdowns by:** Category, Product, City, Month, Order Status, Payment Mode
- **Visuals used:** Column chart, line chart, bar chart, pie chart, donut chart, funnel chart, map, and slicers for interactive filtering

## 🛠️ Tools & Technologies

- **Python** (Pandas, NumPy) — Data cleaning and feature engineering
- **SQL** (MySQL) — Data querying and business analysis
- **Power BI** — Data visualization and dashboarding
- **SQLAlchemy / PyMySQL** — Connecting Python to MySQL

## 📁 Repository Structure

```
├── Ecommerce_Analysis.ipynb     # Data cleaning & preprocessing (Python)
├── Clean_Ecommerce.csv          # Cleaned dataset
├── Ecommerce_analysis.sql       # SQL queries for business analysis
├── Ecommerce_Dashboard.pbix     # Power BI dashboard
└── README.md                    # Project documentation
```

## 🚀 How to Use

1. Clone this repository.
2. Open `Ecommerce_Analysis.ipynb` in Jupyter Notebook to review the data cleaning process.
3. Use `Clean_Ecommerce.csv` to run the queries in `Ecommerce_analysis.sql` (import into MySQL or any SQL environment).
4. Open `Ecommerce_Dashboard.pbix` in Power BI Desktop to explore the interactive dashboard.

## 📌 Key Insights *(fill in with your findings)*

- Top-performing product category:
- Best-selling city:
- Peak sales month:
- Most used payment mode:
- Cancellation/return rate:

## 👤 Author

**Tripti Dubey**

---
⭐ If you found this project useful, consider giving it a star!
