# 02 — Data Import Notes

This file documents the process used to import the cleaned 
CSV dataset into MySQL Workbench 8.0 CE as part of Phase 3 
of the E-Commerce Sales Intelligence project.

---

## File Imported

| Detail | Information |
|--------|-------------|
| File Name | `ecommerce_sales_cleaned.csv` |
| Source | Google Sheets — Cleaned Data tab |
| Destination | `ecommerce_sales` table inside `ecommerce_sales_db` |
| Total Rows Imported | 5,000 |
| Total Columns | 19 |

---

## Import Method

**Tool used:** Table Data Import Wizard — MySQL Workbench 8.0 CE

The Table Data Import Wizard was selected over the LOAD DATA 
method for the following reasons:

- Provides a visual column mapping interface
- Handles file path configuration automatically
- Imports into an existing table without overriding the schema
- Beginner friendly with clear step by step screens

---

## Import Process — Step by Step

| Step | Action |
|------|--------|
| 1 | Right clicked on Tables under ecommerce_sales_db in the Schema panel |
| 2 | Selected Table Data Import Wizard from the context menu |
| 3 | Clicked Browse and navigated to ecommerce_sales_cleaned.csv |
| 4 | Selected Use existing table — ecommerce_sales_db.ecommerce_sales |
| 5 | Confirmed all 19 column mappings matched between CSV and MySQL table |
| 6 | Executed the import and waited for completion |
| 7 | Clicked Finish after import completed successfully |

---

## Verification Query

After import the following query was run to confirm all rows 
were imported correctly:

```sql
SELECT COUNT(*) FROM ecommerce_sales;
```

**Result: 5,000 rows confirmed.**

---

## Column Mapping — CSV to MySQL Table

All 19 columns mapped automatically and correctly:

| CSV Column | MySQL Column | Data Type |
|-----------|-------------|-----------|
| Order_ID | Order_ID | INT |
| Order_Date | Order_Date | DATE |
| Customer_Name | Customer_Name | VARCHAR(100) |
| Region | Region | VARCHAR(50) |
| City | City | VARCHAR(50) |
| Category | Category | VARCHAR(50) |
| Sub_Category | Sub_Category | VARCHAR(50) |
| Product_Name | Product_Name | VARCHAR(150) |
| Quantity | Quantity | INT |
| Unit_Price | Unit_Price | DECIMAL(10,2) |
| Discount | Discount | INT |
| Sales | Sales | DECIMAL(10,2) |
| Profit | Profit | DECIMAL(10,2) |
| Payment_Mode | Payment_Mode | VARCHAR(50) |
| Outlier_Flag | Outlier_Flag | VARCHAR(5) |
| Profit_Margin_Pct | Profit_Margin_Pct | DECIMAL(10,2) |
| Year | Year | INT |
| Month | Month | INT |
| Month_Name | Month_Name | VARCHAR(20) |

---

## Post-Import Status

| Check | Result |
|-------|--------|
| Row count verified | 5,000 ✅ |
| All columns present | 19 ✅ |
| Data types correct | Confirmed via schema setup ✅ |
| Database ready for queries | ✅ |
