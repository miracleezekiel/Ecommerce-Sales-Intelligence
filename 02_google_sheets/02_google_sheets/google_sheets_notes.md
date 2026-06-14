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

---

*Further entries will be added here as Phase 1 progresses.*

*Further entries will be added here as Phase 1 progresses. Each step taken in the workbook will be recorded above this line in chronological order.*


| June 2026 | Step 6 — Check 2 | Duplicate Records Check | Validation and Formulas | Used SUMPRODUCT and COUNTIF to check for duplicate Order IDs, count unique Order IDs, and confirm total row count using COUNTA. Corrected Column G row references and expected value comparisons after identifying a row reference mismatch. | Duplicate records silently inflate revenue figures and distort customer counts. A clean primary key confirms every transaction is recorded exactly once. | Zero duplicate Order IDs found. 5,000 unique Order IDs confirmed. Total row count matches expected 5,000. All three checks returned Pass. |


| June 2026 | Step 6 — Check 5 | Profit Outlier Detection — IQR Method | Validation and Formulas | Used MIN, MAX, AVERAGE, PERCENTILE, and COUNTIF formulas to profile the Profit column. Calculated IQR as Q3 minus Q1. Derived lower bound at minus 21,471.24 and upper bound using 1.5 times IQR rule. Counted profit values outside both boundaries. | Outliers must be identified and documented before any profit or margin analysis begins to prevent them from silently distorting averages and business performance reports. | Lower bound at minus 21,471.24. Zero low outliers confirmed. 223 high outliers identified and flagged. |
| June 2026 | Step 6 — Check 5 Results | Profit Outlier Count Confirmed | Validation and Formulas | Reviewed all 11 Check 5 rows and confirmed all Column G statuses. Row 35 returned Pass with zero low outliers. Row 36 flagged 223 high outliers. Row 37 confirmed 223 as total outlier count. | Formally recording the outlier count ensures full transparency and allows any future reviewer to trace exactly how the number was derived. | Zero low profit outliers confirmed. 223 high profit outliers identified. All 223 will be flagged in Cleaned Data tab with an Outlier Flag column and documented in the Data Issues Log. |


| June 2026 | Step 8 | Outlier Flag Column Added | Cleaned Data | Added Column O — Outlier Flag — using IF formula. Transactions with Profit above 48,831.53 marked Yes. All others marked No. Formula applied across all 5,000 rows and verified using column filter. | Preserves the 223 high profit outliers in the dataset while making them clearly identifiable for conscious inclusion or exclusion in specific analyses. | 223 Yes rows confirmed — matching validation check count exactly. 4,777 No rows confirmed. |

| June 2026 | Step 9 | Profit Margin Percentage Column Added | Cleaned Data | Added Column P — Profit Margin % — using ROUND formula calculating Profit divided by Sales multiplied by 100 rounded to 2 decimal places. Applied across all 5,000 rows. Average verified at 14.92% using temporary AVERAGE formula. | Raw profit amounts do not reveal transaction efficiency. Profit Margin % enables fair comparison across categories, regions, and discount levels regardless of transaction size. | 14.92% average profit margin confirmed across all 5,000 rows. First transaction returned 15.26%. Column formatted as number with 2 decimal places. |
