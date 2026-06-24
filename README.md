# E-Commerce Sales Intelligence: A Revenue Operations Case Study

> Turning 5,000 rows of raw e-commerce transaction data into 
> structured business intelligence — covering data quality 
> assessment, KPI analysis, customer segmentation, and 
> CRM retention insights.

---

## Project Overview

This is an end-to-end data analytics portfolio project built 
across Google Sheets, MySQL Workbench, Python, and GitHub. 
It follows the complete analytical workflow a data analyst 
would apply in a real business environment — from raw data 
validation through to CRM and revenue insights.

The dataset covers 5,000 e-commerce transactions spanning 
October 2023 to October 2025 across products, customers, 
regions, pricing, discounts, and payment modes.

---

## Analyst

Miracle Ezekiel
Virtual Assistant transitioning into Data Analytics with a 
focus on CRM intelligence, revenue operations, and 
AI-supported business automation.

Background in executive assistance, customer support, and 
operations management — bringing direct operational context 
to every dataset analysed.

- GitHub: [github.com/miracleezekiel](https://github.com/miracleezekiel)
- LinkedIn: [linkedin.com/in/miracle-ezekiel](https://linkedin.com/in/miracle-ezekiel)

---

## Dataset Summary

| Detail | Information |
|--------|-------------|
| Total Records | 5,000 rows |
| Total Columns | 19 (14 original + 5 calculated) |
| Date Range | October 2023 to October 2025 |
| Data Type | Synthetic e-commerce sales data |
| Source License | CC0 Public Domain |

### Original Columns
Order_ID, Order_Date, Customer_Name, Region, City, Category, 
Sub_Category, Product_Name, Quantity, Unit_Price, Discount, 
Sales, Profit, Payment_Mode

### Calculated Columns Added During Cleaning
Outlier_Flag, Profit_Margin_Pct, Year, Month, Month_Name

---

## Tools and Environment

| Tool | Purpose |
|------|---------|
| Google Sheets | Data cleaning, validation, exploration, and visualisation |
| MySQL Workbench 8.0 CE | Database schema, KPI queries, and segmentation analysis |
| Python — Cursor | Data analysis scripts and CRM modelling |
| GitHub | Version control and project documentation |

---

## Project Structure

| Folder | Contents |
|--------|---------|
| `01_dataset` | Raw and cleaned CSV dataset files |
| `02_google_sheets` | Workbook documentation and step-by-step notes |
| `03_sql_mysql` | Database schema and all SQL query files |
| `04_python` | Jupyter notebooks and final Python scripts |
| `05_screenshots` | Visual documentation of work at each stage |
| `06_case_study` | Final written case study report |

---

## Project Stages

|Stage | Description | Status |
|-------|-------------|--------|
| Phase 1 — Data Cleaning and Quality Assessment | Full dataset audit, validation checks, issue documentation, and calculated column additions across 19 columns | ✅ Complete |
| Phase 2 — Exploratory Data Analysis | Sales trends, profit margins, regional performance, discount impact analysis, pivot tables, and data visualisations | ✅ Complete |
| Phase 3 — SQL Analysis and Business Intelligence | 15 KPI queries, 4 segmentation queries, and 3 churn analysis queries written and executed in MySQL Workbench 8.0 CE | ✅ Complete |
| Phase 4 — CRM and Customer Retention Analysis | Customer frequency analysis, churn identification, retention segmentation, and CRM recommendations | 🔄 In Progress |
| Phase 5 — Case Study and Publishing | Full written case study, GitHub publication, and content release | 🔜 Upcoming |
---

## Key Findings — Data Quality Assessment

The following findings were formally documented during the 
data cleaning stage:

## Key Findings

### Phase 1 — Data Quality Assessment

| Finding | Detail |
|---------|--------|
| Missing values | Zero across all 14 original columns |
| Duplicate records | Zero — all 5,000 Order IDs are unique |
| Sales formula accuracy | 100% — all 5,000 sales figures mathematically verified |
| Profit outliers | 223 high-profit transactions identified above the IQR upper bound of 48,831.53 |
| Incomplete 2023 data | October to December only — excluded from year-over-year comparisons |
| Customer repeat rate | Below 5% — central focus of Phase 4 CRM and retention analysis |

### Phase 2 — Exploratory Data Analysis

| Finding | Detail |
|---------|--------|
| Total revenue | 533,666,024.35 across 5,000 transactions |
| Total profit | 79,708,734.91 — average margin of 14.92% |
| Average order value | 106,733.20 per transaction |
| Regional performance | North leads revenue at 26.90% but has the weakest margin at 14.84% |
| Category performance | Home Decor leads revenue at 10.72% — Electronics has the highest margin at 15.39% |
| Monthly trends | May is the strongest month at 9.51% of revenue — February is the weakest at 7.45% |
| Discount impact | Average order value falls consistently from 117,340.72 at zero discount to 94,618.46 at 20% |

### Phase 3 — SQL Analysis and Business Intelligence

| Finding | Detail |
|---------|--------|
| Repeat purchase rate | 96.82% of all customers placed exactly one order and never returned |
| Repeat customer value | Two-order customers spend 2.03x more per lifetime than one-time customers. Three-order customers spend 3.88x more |
| Discount trap confirmed | Average order value falls 19.4% from zero discount to 20% discount — confirmed across all 5,000 rows in SQL |
| Most profitable combination | North-Electronics at 16.23% average profit margin — rank 1 of 40 region-category combinations |
| Least profitable combination | North-Beauty at 13.28% average profit margin — rank 40 of 40 |
| High value transaction impact | 1,326 transactions — 26.52% of orders — generate 56.21% of total revenue |
| Outlier revenue impact | 223 outlier transactions generate 16.81% of total profit from only 4.46% of all transactions |
| Churn risk by region | North has the highest churn risk at 99.61% — South is the most viable pilot region for retention at 99.25% |

## Documentation Approach

Every step taken in this project is documented in three places:

1. The Google Sheets workbook — Sheet Notes tab records every 
   action, reason, and outcome in tabular format
2. The `02_google_sheets/google_sheets_notes.md` file — mirrors 
   the Sheet Notes tab for GitHub visibility
3. Individual folder README files — each folder contains a 
   dedicated README explaining its contents and purpose

---

## Project Status

**Active — Updated progressively as each stage is completed.**

*Started: June 2026*
