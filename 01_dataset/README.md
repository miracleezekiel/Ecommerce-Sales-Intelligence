# 01 — Dataset

This folder contains the original raw dataset used in the E-Commerce Sales Intelligence project. No modifications, cleaning, or transformations have been applied to this file. It represents the data exactly as it was sourced.

---

## File in This Folder

| File | Description |
|------|-------------|
| `ecommerce_sales_raw.csv` | Original dataset containing 5,000 rows and 14 columns. Covers e-commerce transactions recorded between 2023 and 2025. |

---

## Dataset Overview

| Detail | Information |
|--------|-------------|
| Total Records | 5,000 rows |
| Total Columns | 14 columns |
| Date Range | October 2023 to October 2025 |
| Data Type | Synthetic e-commerce sales data |
| License | CC0 Public Domain |

---

## Column Descriptions

| Column | Data Type | Description |
|--------|-----------|-------------|
| Order ID | Integer | Unique identifier for each transaction. Ranges from 10001 to 15000. |
| Order Date | Date | The date the order was placed. Format: YYYY-MM-DD. |
| Customer Name | Text | Full name of the customer who placed the order. |
| Region | Text | Geographic sales region. Values: North, South, East, West. |
| City | Text | City where the order was placed. 5 cities per region, 20 cities total. |
| Category | Text | Top-level product category. 10 unique categories. |
| Sub-Category | Text | Product sub-category within each category. 50 unique sub-categories. |
| Product Name | Text | Name of the individual product ordered. |
| Quantity | Integer | Number of units ordered. Ranges from 1 to 5. |
| Unit Price | Integer | Price of a single unit before discount. |
| Discount | Integer | Discount percentage applied to the order. Values: 0, 5, 10, 15, or 20. |
| Sales | Decimal | Final sales amount after discount is applied. Calculated as Quantity × Unit Price × (1 − Discount%). |
| Profit | Decimal | Profit generated from the transaction. |
| Payment Mode | Text | Method of payment used. Values: Debit Card, Credit Card, UPI, Net Banking, COD. |

---

## Important Note

This file is preserved in its original state throughout the entire project. All data cleaning, validation, and transformation work is documented and conducted separately inside the Google Sheets workbook and Python scripts. Reference the `02_google_sheets` and `04_python` folders for all cleaning documentation.
