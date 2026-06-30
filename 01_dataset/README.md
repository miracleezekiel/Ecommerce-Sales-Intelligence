# 01 — Dataset

This folder contains the raw and cleaned versions of the
e-commerce dataset used throughout the project.

---

## Files

| File | Description |
|------|-------------|
| `ecommerce_sales_raw.csv` | Original unmodified dataset as received before any cleaning |
| `ecommerce_sales_cleaned.csv` | Fully cleaned and validated dataset with 19 columns ready for analysis |

---

## Dataset Specifications

| Detail | Value |
|--------|-------|
| Total Rows | 5,000 |
| Original Columns | 14 |
| Columns After Cleaning | 19 |
| Date Range | October 2023 to October 2025 |
| Unique Customers | 4,844 |
| Regions | 4 — North, East, West, South |
| Cities | 20 — 5 per region |
| Categories | 10 |
| Payment Modes | 5 |
| Discount Levels | 5 — 0%, 5%, 10%, 15%, 20% |

---

## Original Columns (14)

| Column | Data Type | Description |
|--------|-----------|-------------|
| Order_ID | Integer | Unique identifier for each transaction |
| Order_Date | Date | Date the order was placed |
| Customer_Name | Text | Name of the customer |
| Region | Text | Geographic region — North, East, West, South |
| City | Text | Specific city within the region |
| Category | Text | Product category |
| Sub_Category | Text | Product sub-category |
| Product_Name | Text | Name of the product |
| Quantity | Integer | Number of units ordered |
| Unit_Price | Decimal | Price per unit |
| Discount | Decimal | Discount percentage applied |
| Sales | Decimal | Total revenue for the order |
| Profit | Decimal | Total profit for the order |
| Payment_Mode | Text | Payment method used |

---

## Calculated Columns Added During Phase 1 (5)

| Column | Formula Type | Description |
|--------|-------------|-------------|
| Outlier_Flag | IF with IQR threshold | Flags 223 transactions with profit above 48,831.53 |
| Profit_Margin_Pct | Profit divided by Sales multiplied by 100 | Profit margin as a percentage |
| Year | YEAR function on Order_Date | Year of the transaction |
| Month | MONTH function on Order_Date | Month number of the transaction |
| Month_Name | TEXT function on Order_Date | Full month name — January, February etc |

---

## Data Quality Summary

| Check | Finding |
|-------|---------|
| Missing values | Zero across all 14 original columns |
| Duplicate records | Zero — all 5,000 Order IDs are unique |
| Sales formula accuracy | 100% mathematically verified |
| Profit outliers | 223 transactions flagged above IQR upper bound |
| 2023 coverage | Partial year — October to December only |

---

## How the Cleaned CSV Was Prepared

The cleaned CSV was exported from Google Sheets after completing
all Phase 1 validation checks and adding the 5 calculated columns.
Column headers were renamed to remove spaces and special characters
to ensure full compatibility with MySQL Workbench import.

Example renames:
- "Order ID" became "Order_ID"
- "Profit Margin %" became "Profit_Margin_Pct"
- "Order Date" became "Order_Date"

---

## Phase Coverage

| Phase | Activity |
|-------|----------|
| Phase 1 | Data source for cleaning and quality assessment |
| Phase 2 | Data source for exploratory analysis |
| Phase 3 | Imported into MySQL Workbench as ecommerce_sales table |
| Phase 4 | Loaded into Python via pd.read_csv() |
