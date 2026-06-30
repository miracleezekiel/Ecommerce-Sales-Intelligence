# 02 — Google Sheets

This folder contains all work completed inside Google Sheets
during Phase 1 and Phase 2 of the project.

---

## Files

| File | Description |
|------|-------------|
| `README.md` | Overview of the Google Sheets folder and all tabs |
| `google_sheets_notes.md` | Full step-by-step documentation log — every action taken in every session |
| `ecommerce_sales_data_workbook.xlsx` | Complete Google Sheets workbook exported as Excel — all tabs included |

---

## Workbook Name

**E-Commerce Sales Intelligence — Data Workbook**

---

## Tabs in the Workbook

| Tab | Purpose |
|-----|---------|
| Raw Data | Original unmodified dataset — 5,000 rows — 14 columns |
| Cleaned Data | Validated and expanded dataset — 5,000 rows — 19 columns |
| Data Issues Log | Formal documentation of 4 identified data issues |
| Validation and Formulas | All 5 validation checks with formulas and results |
| Data Exploration | 6 analytical sections covering all KPI calculations |
| Pivot Tables | 5 pivot tables covering region, category, time, and discount analysis |
| KPI Ideas | 15 KPIs documented — 11 for SQL, 4 for CRM analysis |
| Visualizations | 5 charts created from the analysis |
| Sheet Notes | Full documentation log — Date, Phase, Step, Action, Reason, Outcome |

---

## Phase 1 Work Completed — Data Cleaning

| Activity | Detail |
|----------|--------|
| Validation Check 1 | Missing values — zero across all 14 columns |
| Validation Check 2 | Duplicate records — zero — all 5,000 Order IDs unique |
| Validation Check 3 | Categorical consistency — all regions, categories, and payment modes confirmed |
| Validation Check 4 | Sales formula accuracy — 100% verified across all 5,000 rows |
| Validation Check 5 | IQR outlier detection — 223 high-profit transactions flagged |
| Column 15 added | Outlier_Flag using IF formula |
| Column 16 added | Profit_Margin_Pct — ROUND((Profit/Sales) x 100, 2) |
| Column 17 added | Year — using YEAR function on Order_Date |
| Column 18 added | Month — using MONTH function on Order_Date |
| Column 19 added | Month_Name — using TEXT function on Order_Date |

---

## Phase 2 Work Completed — Exploratory Data Analysis

| Section | What Was Analysed |
|---------|------------------|
| Section 1 | Headline KPIs — total revenue, profit, AOV, margin, date range, unique customers |
| Section 2 | Revenue and profit by Region — 4 regions compared |
| Section 3 | Revenue and profit by Category — 10 categories compared |
| Section 4 | Payment mode analysis — 5 payment modes compared |
| Section 5 | Discount impact analysis — 5 discount levels compared |
| Section 6 | Monthly and yearly time trends — 2023 partial, 2024 full, 2025 partial |

---

## Key Formulas Used

| Formula | What It Does | Where Used |
|---------|-------------|-----------|
| =COUNTBLANK(range) | Counts empty cells | Validation Check 1 — missing values |
| =COUNTIF(range, value) | Counts occurrences of a value | Validation Check 2 and 3 — duplicates and categories |
| =IF(condition, true, false) | Returns different values based on a condition | Outlier_Flag column |
| =ROUND(number, decimals) | Rounds to specified decimal places | Profit_Margin_Pct column |
| =YEAR(date) | Extracts year from a date | Year column |
| =MONTH(date) | Extracts month number from a date | Month column |
| =TEXT(date, format) | Converts date to text format | Month_Name column |
| =QUARTILE(range, n) | Returns quartile value | IQR outlier detection in Validation Check 5 |
| =SUM(range) | Adds all values in a range | All KPI totals |
| =AVERAGE(range) | Calculates arithmetic mean | Average order value and margin |
| =MAX and =MIN | Finds largest and smallest values | Date range and extreme values |

---

## Documentation Protocol

Every step taken in Google Sheets was recorded in the Sheet Notes tab
with eight columns:

| Column | Content |
|--------|---------|
| Date | When the step was completed |
| Phase | Which project phase the step belongs to |
| Step Number | Sequential step reference |
| Step Title | Short descriptive name for the step |
| Tab Affected | Which Google Sheets tab was modified |
| Action Taken | Detailed description of what was done |
| Reason | Why this step was taken |
| Outcome | What the result was |

The same information is mirrored in `google_sheets_notes.md` for
GitHub-based review.

---

## Phase Coverage

| Phase | Activity |
|-------|----------|
| Phase 1 | Data cleaning — raw data validation and 5 column additions |
| Phase 2 | Exploratory analysis — KPIs, pivot tables, and charts |
