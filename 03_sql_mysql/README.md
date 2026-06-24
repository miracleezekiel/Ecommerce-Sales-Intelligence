# 03 — SQL and MySQL Workbench

This folder contains all SQL scripts produced during Phase 3 
of the E-Commerce Sales Intelligence project. All queries 
are written and executed inside MySQL Workbench 8.0 CE 
against the ecommerce_sales_db database.

---

## Database Details

| Detail | Information |
|--------|-------------|
| Database Name | `ecommerce_sales_db` |
| Table Name | `ecommerce_sales` |
| Total Rows | 5,000 |
| Total Columns | 19 |
| Import Method | Table Data Import Wizard — MySQL Workbench 8.0 CE |
| Import Verified | SELECT COUNT confirmed 5,000 rows post-import |

---

## Files in This Folder

| File | Description |
|------|-------------|
| `README.md` | Overview of the SQL folder, database details, and all files |
| `01_schema_setup.sql` | Creates the ecommerce_sales_db database and ecommerce_sales table with correct data types |
| `02_data_import_notes.md` | Step-by-step documentation of the CSV import process into MySQL |
| `03_kpi_queries.sql` | 15 KPI queries covering revenue, regional, category, discount, time-based, payment, margin, customer, and outlier analysis |
| `04_segmentation_queries.sql` | 4 segmentation queries covering city performance, customer frequency, transaction value tiers, and category-discount cross analysis |
| `05_churn_analysis.sql` | 3 churn analysis queries covering inactive customer identification, repeat purchase gap analysis, and category churn risk |

---

## Query Summary

### 03_kpi_queries.sql — 15 Queries

| Query | Business Question |
|-------|-----------------|
| KPI-001 | Overall business performance — total revenue, profit, and average order value |
| KPI-002 | Sales and profit by region |
| KPI-003 | Sales and profit by category |
| KPI-004 | Discount impact on sales and profit |
| KPI-005 | Monthly revenue trend |
| KPI-006 | Year over year revenue comparison — 2024 vs 2025 |
| KPI-007 | Payment mode analysis |
| KPI-008 | Profit margin by region and category |
| KPI-009 | Customer repeat purchase analysis |
| KPI-010 | Repeat purchase rate by region |
| KPI-011 | Customer lifetime value — top 20 customers |
| KPI-012 | Single purchase customer analysis |
| KPI-013 | Churn risk by region |
| KPI-014 | Outlier revenue impact analysis |
| KPI-015 | Category and region cross analysis with margin ranking |

### 04_segmentation_queries.sql — 4 Queries

| Query | Business Question |
|-------|-----------------|
| SEG-001 | Sales performance by region and city |
| SEG-002 | Customer order frequency segments and revenue contribution |
| SEG-003 | Transaction value segments — high, mid, and low value tiers |
| SEG-004 | Category performance within each discount level |

### 05_churn_analysis.sql — 3 Queries

| Query | Business Question |
|-------|-----------------|
| CHURN-001 | Inactive customer identification — churned vs at risk |
| CHURN-002 | Repeat customer purchase gap analysis |
| CHURN-003 | Category churn risk analysis |

---

## Key SQL Findings

| Finding | Result |
|---------|--------|
| Total revenue confirmed | 533,666,024.35 — matches Google Sheets Phase 2 exactly |
| Repeat purchase rate | 96.82% of customers placed exactly one order and never returned |
| Repeat customer value | Two-order customers spend 2.03x more lifetime value than one-time customers |
| Discount trap | Average order value falls 19.4% from zero discount to 20% discount |
| Most profitable combination | North-Electronics — 16.23% margin — rank 1 of 40 |
| Least profitable combination | North-Beauty — 13.28% margin — rank 40 of 40 |
| High value transaction impact | 26.52% of orders generate 56.21% of total revenue |
| Outlier impact | 223 transactions generate 16.81% of profit from 4.46% of transactions |
| North churn risk | 99.61% — highest of all four regions |
| South retention rate | 0.75% — highest of all four regions — most viable pilot region |

---

## SQL Concepts Used

| Concept | Where Used |
|---------|-----------|
| SELECT, FROM, WHERE | All queries — basic data retrieval |
| GROUP BY | All aggregation queries |
| ORDER BY ASC and DESC | All queries — sorting results |
| SUM, COUNT, AVG, ROUND | All queries — aggregation functions |
| MIN, MAX | KPI-011, CHURN-001, CHURN-002 |
| CASE WHEN | KPI-006, KPI-009, KPI-013, SEG-003, CHURN-001, CHURN-003 |
| Subqueries | KPI-002 through KPI-015 — percentage calculations |
| Derived Tables | KPI-009, KPI-010, KPI-012, KPI-013, SEG-002, CHURN-003 |
| INNER JOIN | KPI-012 |
| HAVING | KPI-009, KPI-012, CHURN-002 |
| RANK window function | KPI-015 |
| DATEDIFF | CHURN-001, CHURN-002 |
| DATE_SUB | CHURN-001 |
| LIMIT | KPI-011, KPI-012, CHURN-001 |

---

## Phase Coverage

| Phase | Activity |
|-------|----------|
| Phase 3 | SQL Analysis and Business Intelligence — all queries written, executed, and documented |

---

## Important Note

All SQL query results have been verified against the Google 
Sheets Phase 2 findings where applicable. Any discrepancies 
are documented in the query comments within each SQL file. 
All results are reproducible by running the queries against 
the ecommerce_sales_db database with the imported 
ecommerce_sales_cleaned.csv dataset.
