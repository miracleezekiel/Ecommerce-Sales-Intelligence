# 02 — Google Sheets

This folder documents all work conducted inside the Google Sheets workbook as part of this project. The workbook serves as the primary environment for data cleaning, validation, exploration, and visualization during Phase 1.

---

## Workbook Name

E-Commerce Sales Intelligence — Data Workbook

---

## Files in This Folder

| File | Description |
|------|-------------|
| `README.md` | Overview of the Google Sheets workbook structure and folder contents |
| `google_sheets_notes.md` | Dated step-by-step log of every action taken inside the workbook |

---

## Workbook Structure

The workbook contains 9 tabs. Each tab serves a specific and separate purpose throughout the analysis process.

| Tab | Tab Name | Purpose |
|-----|----------|---------|
| 1 | Raw Data | The original dataset imported without any modification. This tab is never edited and serves as the permanent source of truth. |
| 2 | Cleaned Data | The working copy of the dataset where all cleaning, correction, and standardisation is applied. |
| 3 | Data Issues Log | A record of every data quality issue identified during the cleaning process, including the issue type, affected column, and the action taken. |
| 4 | Validation and Formulas | All checking formulas used to validate data integrity, including duplicate checks, null checks, data type validation, and formula verification. |
| 5 | Data Exploration | Initial summaries, value counts, and breakdowns used to understand the structure and distribution of the dataset before deeper analysis. |
| 6 | Pivot Tables | Aggregated analysis built using pivot tables, covering sales by region, category, payment mode, discount level, and time period. |
| 7 | KPI Ideas | A working list of business questions and key performance indicators identified for further investigation in the SQL and Python phases. |
| 8 | Visualizations | Charts and visual outputs built from the pivot table and exploration data to support the findings in the case study. |
| 9 | Sheet Notes | A dated log of every step taken inside this workbook, recorded in chronological order as work progresses. |

---

## Phase Coverage

| Phase | Activity |
|-------|----------|
| Phase 1 | Data Cleaning and Quality Assessment — Tabs 1, 2, 3, 4 |
| Phase 2 | Exploratory Data Analysis — Tabs 5, 6, 7, 8 |

---

## Important Note

All actions taken inside this workbook are mirrored in `google_sheets_notes.md` in this folder. That file serves as the written record of the Google Sheets work for anyone reviewing this project on GitHub who does not have access to the workbook directly.
