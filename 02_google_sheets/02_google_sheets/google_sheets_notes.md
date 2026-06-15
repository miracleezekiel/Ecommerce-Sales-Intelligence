# Google Sheets — Working Notes

This file is a dated, step-by-step record of every action taken inside the E-Commerce Sales Intelligence — Data Workbook. It is updated progressively as each phase of the project is completed.

---

## How This File Is Updated

Each time a new step is completed inside the Google Sheets workbook, an entry is added here with the date, the tab it was performed in, what was done, and why it was done. This ensures the work inside the workbook is fully transparent and reproducible by anyone reviewing this project.

---

## Phase 1 — Data Cleaning and Quality Assessment

### Step 1 — Raw Data Import
**Date:** June 2026
**Tab:** Raw Data
**Action:** Imported the original dataset `ecommerce_sales_raw.csv` into the Raw Data tab.
**Reason:** The Raw Data tab is preserved as the permanent source of truth. No edits are made here at any point during the project.

# Google Sheets — Working Notes

This file mirrors the Sheet Notes tab inside the 
E-Commerce Sales Intelligence — Data Workbook. 
Every entry here corresponds to a row in that tab 
and is updated progressively as each phase of the 
project is completed.

---

## Log Format

| Column | Description |
|--------|-------------|
| Date | Date the step was completed |
| Phase | Project phase the step belongs to |
| Step Number | Sequential step reference |
| Step Title | Short name of the step |
| Tab Affected | Which workbook tab was used |
| Action Taken | Exactly what was done |
| Reason | Why this step was necessary |
| Outcome | What the result confirmed |

---

## Phase 1 — Data Cleaning and Quality Assessment

| Date | Step | Title | Tab | Action | Reason | Outcome |
|------|------|-------|-----|--------|--------|---------|
| June 2026 | Step 1 | Raw Data Import | Raw Data | Imported ecommerce_sales_raw.csv using File > Import with comma separator and text-to-number conversion enabled. | To load the original dataset as the permanent source of truth before any analysis begins. | 5,000 rows and 14 columns successfully loaded. |
| June 2026 | Step 2 | Raw Data Tab Protection | Raw Data | Applied sheet protection via right-click > Protect sheet. Permissions set to Only You. | To prevent accidental edits to the original dataset at any point during the project. | Padlock icon visible on Raw Data tab confirming protection. |
| June 2026 | Step 3 | All 9 Tabs Created | All Tabs | Created and named all 9 tabs in correct order. | To establish a structured workbook where each tab serves a specific analytical purpose. | All 9 tabs visible and correctly named. |
| June 2026 | Step 4 | Working Copy Created | Cleaned Data | Used Paste Special > Values Only to copy raw data into Cleaned Data tab. | To create an independent working copy with no links back to the raw data tab. | 5,000 rows and 14 columns pasted as values only. |
| June 2026 | Step 5 | Header Row Formatted | Cleaned Data | Froze Row 1, bolded all 14 headers, applied filter to all columns. | To maintain column visibility when scrolling 5,000 rows and enable column-level inspection. | Row frozen, headers bold, filter arrows visible on all 14 columns. |

| June 2026 | Step 10 | Year Column Added | Cleaned Data | Added Column Q — Year — using YEAR formula referencing Order Date column. Applied across all 5,000 rows. COUNTUNIQUE verified 3 unique years — 2023, 2024, 2025. Temporary formula deleted after verification. | Standalone Year column enables faster grouping and filtering in Google Sheets and SQL without complex date range conditions. Critical given 2023 covers only October to December. | Year column populated across all 5,000 rows. 2024 confirmed in Q2. Three unique years confirmed matching expected date range. |

---

*Further entries will be added here as Phase 1 progresses.*

*Further entries will be added here as Phase 1 progresses. Each step taken in the workbook will be recorded above this line in chronological order.*


| June 2026 | Step 6 — Check 2 | Duplicate Records Check | Validation and Formulas | Used SUMPRODUCT and COUNTIF to check for duplicate Order IDs, count unique Order IDs, and confirm total row count using COUNTA. Corrected Column G row references and expected value comparisons after identifying a row reference mismatch. | Duplicate records silently inflate revenue figures and distort customer counts. A clean primary key confirms every transaction is recorded exactly once. | Zero duplicate Order IDs found. 5,000 unique Order IDs confirmed. Total row count matches expected 5,000. All three checks returned Pass. |


| June 2026 | Step 6 — Check 5 | Profit Outlier Detection — IQR Method | Validation and Formulas | Used MIN, MAX, AVERAGE, PERCENTILE, and COUNTIF formulas to profile the Profit column. Calculated IQR as Q3 minus Q1. Derived lower bound at minus 21,471.24 and upper bound using 1.5 times IQR rule. Counted profit values outside both boundaries. | Outliers must be identified and documented before any profit or margin analysis begins to prevent them from silently distorting averages and business performance reports. | Lower bound at minus 21,471.24. Zero low outliers confirmed. 223 high outliers identified and flagged. |
| June 2026 | Step 6 — Check 5 Results | Profit Outlier Count Confirmed | Validation and Formulas | Reviewed all 11 Check 5 rows and confirmed all Column G statuses. Row 35 returned Pass with zero low outliers. Row 36 flagged 223 high outliers. Row 37 confirmed 223 as total outlier count. | Formally recording the outlier count ensures full transparency and allows any future reviewer to trace exactly how the number was derived. | Zero low profit outliers confirmed. 223 high profit outliers identified. All 223 will be flagged in Cleaned Data tab with an Outlier Flag column and documented in the Data Issues Log. |


| June 2026 | Step 8 | Outlier Flag Column Added | Cleaned Data | Added Column O — Outlier Flag — using IF formula. Transactions with Profit above 48,831.53 marked Yes. All others marked No. Formula applied across all 5,000 rows and verified using column filter. | Preserves the 223 high profit outliers in the dataset while making them clearly identifiable for conscious inclusion or exclusion in specific analyses. | 223 Yes rows confirmed — matching validation check count exactly. 4,777 No rows confirmed. |

| June 2026 | Step 9 | Profit Margin Percentage Column Added | Cleaned Data | Added Column P — Profit Margin % — using ROUND formula calculating Profit divided by Sales multiplied by 100 rounded to 2 decimal places. Applied across all 5,000 rows. Average verified at 14.92% using temporary AVERAGE formula. | Raw profit amounts do not reveal transaction efficiency. Profit Margin % enables fair comparison across categories, regions, and discount levels regardless of transaction size. | 14.92% average profit margin confirmed across all 5,000 rows. First transaction returned 15.26%. Column formatted as number with 2 decimal places. |


| June 2026 | Step 11 | Month Column Added | Cleaned Data | Added Column R — Month — using MONTH formula referencing Order Date column. Applied across all 5,000 rows. COUNTUNIQUE verified 12 unique months present. Temporary formula deleted after verification. | Standalone Month column enables instant grouping and filtering by month in Google Sheets and SQL without complex date range conditions. Supports monthly trend and seasonal pattern analysis. | Month column populated across all 5,000 rows. R2 returned 10 confirming October as first transaction month. All 12 months confirmed present across dataset. |


| June 2026 | Step 12 | Month Name Column Added | Cleaned Data | Added Column S — Month Name — using TEXT formula with MMMM format referencing Order Date column. Applied across all 5,000 rows. COUNTUNIQUE verified all 12 month names present. Temporary formula deleted after verification. | Column R stores month as a number for calculations and SQL. Column S stores the full month name for charts, pivot tables, and human readable reports. Both serve different but equally important analytical purposes. | Month Name column populated across all 5,000 rows. S2 returned October consistent with R2 returning 10. All 12 month names confirmed present. Cleaned Data tab now contains 19 columns total. |


| June 2026 | Step 13 | Cleaned Dataset Exported and Uploaded to GitHub | Cleaned Data | Renamed 10 column headers for MySQL compatibility — removed spaces, hyphens, and special characters. Exported Cleaned Data tab as ecommerce_sales_cleaned.csv via File Download CSV. Uploaded to 01_dataset folder on GitHub. | MySQL requires clean column names without spaces or special characters for error-free importation. Standardising before export prevents import failures in Phase 3. | 19 headers standardised. Cleaned CSV exported with all 5,000 rows and 19 columns. Uploaded to GitHub alongside raw dataset. |

| June 2026 | Phase 2 Step 1 | Data Exploration Section 1 — Dataset Overview | Data Exploration | Built headline metrics table with 10 key figures. Applied accounting format to monetary rows, date format to date rows, removed decimal places from count rows. Added borders. | Headline numbers establish business scale and context before deeper breakdowns begin. | Total revenue 533,666,024.35. Total profit 79,708,734.91. Average order value 106,733.20. 4,844 unique customers. 223 outliers confirmed. |

| June 2026 | Phase 2 Step 2 | Data Exploration Section 2 — Sales and Profit by Region | Data Exploration | Built regional breakdown using SUMIF and AVERAGEIF formulas for all four regions. Calculated total sales, profit, average margin, and percentage contributions. Added totals row verified against Section 1 figures. | Regional breakdown reveals geographic distribution of revenue and profit efficiency. North leads revenue but has weakest margin. South has highest margin but lowest revenue. | North 26.90% revenue share, 14.84% margin. South 23.09% revenue, 14.98% margin. East 25.45% revenue, 14.91% margin. West 24.56% revenue, 14.97% margin. All totals verified. |

| June 2026 | Phase 2 Step 3 | Data Exploration Section 3 — Sales and Profit by Category | Data Exploration | Built category breakdown using SUMIF and AVERAGEIF for all 10 categories. Calculated sales, profit, margin, and percentage contributions. Verified totals against Section 1. Percentage rounding artifact of 0.01 noted as expected. | Category breakdown reveals revenue versus profitability gaps across product lines — essential for pricing and marketing decisions. | Home Decor leads revenue at 10.72%. Electronics highest margin at 15.39%. Beauty lowest margin at 14.38%. Clothing best combination of volume and margin. Revenue spread of only 1.75% across all 10 categories. |
