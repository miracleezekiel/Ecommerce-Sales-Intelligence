# 03 — SQL and MySQL Workbench

This folder contains all SQL scripts and supporting documentation 
produced during Phase 3 of the E-Commerce Sales Intelligence project. 
All queries are written and executed inside MySQL Workbench 8.0 CE.

---

## Database Name

`ecommerce_sales_db`

---

## Files in This Folder

| File | Description |
|------|-------------|
| `README.md` | Overview of the SQL folder, database name, and all files contained here |
| `01_schema_setup.sql` | SQL script that creates the database and defines the table structure |
| `02_data_import_notes.md` | Written record of the process used to import the cleaned CSV dataset into MySQL |
| `03_kpi_queries.sql` | SQL queries built to measure key business performance indicators |
| `04_segmentation_queries.sql` | SQL queries for customer and product segmentation analysis |
| `05_churn_analysis.sql` | SQL queries supporting CRM and customer retention analysis |

---

## Query Categories

### 01 — Schema Setup
Creates the `ecommerce_sales_db` database and defines the 
`ecommerce_sales` table with the correct column names, 
data types, and constraints matching the cleaned dataset.

### 02 — Data Import Notes
Documents every step taken to import the cleaned CSV file 
from Google Sheets into MySQL Workbench. Includes settings 
used, any issues encountered, and how they were resolved.

### 03 — KPI Queries
Business performance queries covering:
- Total revenue and total profit
- Average order value
- Profit margin by category and region
- Monthly and yearly sales trends
- Top performing products and sub-categories
- Payment mode distribution

### 04 — Segmentation Queries
Customer and product analysis queries covering:
- Sales performance by region and city
- Category and sub-category revenue breakdown
- Discount impact on sales and profit
- Customer order frequency
- High value versus low value transaction segments

### 05 — Churn Analysis
CRM-focused queries covering:
- Identification of one-time versus repeat customers
- Revenue contribution by customer frequency
- Regional retention patterns
- Product categories associated with low repeat purchase rates
- Customer segments most at risk of churn

---

## Phase Coverage

| Phase | Activity |
|-------|----------|
| Phase 3 | SQL Analysis and Business Intelligence |

---

## Important Note

All SQL files in this folder are updated during Phase 3. 
The folder structure and file names are established in advance 
to maintain consistency across the project. Each SQL file is 
added and committed to this folder as the corresponding 
analysis is completed inside MySQL Workbench 8.0 CE.
