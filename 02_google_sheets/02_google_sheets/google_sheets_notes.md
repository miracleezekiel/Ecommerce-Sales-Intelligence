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
