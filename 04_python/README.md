# 04 — Python

This folder contains all Python work completed as part of the 
E-Commerce Sales Intelligence project. It is organised into 
two subfolders that separate the testing notebook from the 
final script outputs.

---

## Folder Structure

| Subfolder | Contents |
|-----------|---------|
| `notebooks/` | Jupyter notebook used for step-by-step analysis and testing |
| `scripts/` | Final Python scripts containing clean production-ready code |

---

## Files

| File | Description |
|------|-------------|
| `notebooks/data_cleaning_notebook.ipynb` | Main Jupyter notebook containing all Phase 4 Python analysis |
| `scripts/data_cleaning.py` | Final clean Python script produced after notebook testing |

---

## Tools

| Tool | Purpose |
|------|---------|
| Cursor | AI-powered code editor used to write and run all Python code |
| Jupyter Notebook | Interactive cell-by-cell coding environment built into Cursor |
| Python 3.14 | Programming language |
| pandas | Data loading, manipulation, and analysis |
| matplotlib | Chart and visualisation creation |
| seaborn | Statistical visualisation and professional chart styling |
| openpyxl | Excel file reading and writing support |
---

## Python Concepts Used

| Concept | Plain English Meaning | Where Used |
|---------|----------------------|-----------|
| `import` | Bring in a toolbox of ready-made functions | Every notebook cell — imports pandas matplotlib seaborn |
| `pd.read_csv()` | Load a CSV file into a pandas DataFrame table | Cell 2 — loading the cleaned dataset |
| `df.head()` | Show the first 5 rows of the dataset | Cell 3 — initial data preview |
| `df.columns` | List all column names in the dataset | Cell 4 — confirming all 19 columns loaded correctly |
| `df.info()` | Show data types and null value counts per column | Cell 5 — confirming data types and zero nulls |
| `df.describe()` | Show statistical summary of all numerical columns | Cell 6 — verifying figures match Phase 2 and Phase 3 |
| `df['column']` | Select a specific column from the DataFrame | RFM analysis — selecting Customer_Name Sales etc |
| `groupby()` | Group rows by a column and calculate aggregations | RFM analysis — grouping by Customer_Name |
| `agg()` | Apply multiple calculations to grouped data at once | RFM analysis — calculating recency frequency monetary |
| `pd.to_datetime()` | Convert text dates to proper Python date format | RFM analysis — converting Order_Date column |
| `apply()` | Apply a function to every row or column | RFM scoring — assigning scores per customer |
| `pd.cut()` | Divide numerical values into labelled tiers | RFM segmentation — creating score bands |
| `merge()` | Join two DataFrames together on a shared column | RFM analysis — combining scores with customer data |
| `value_counts()` | Count how many times each unique value appears | Segment distribution analysis |
| `plt.figure()` | Create a new chart canvas | Visualisation cells |
| `sns.barplot()` | Draw a bar chart using seaborn | RFM segment visualisations |
| `df.to_csv()` | Export DataFrame to a CSV file | Exporting RFM segmented customer data |

---

## Phase Coverage

| Phase | Activity |
|-------|----------|
| Phase 4 | CRM and Customer Retention Analysis — RFM scoring and segmentation |

---

## Workflow

All Python work follows this two-step process:

1. Code is written and tested inside the Jupyter notebook 
   in the `notebooks/` subfolder one cell at a time
2. Once confirmed working the final version is saved 
   as a clean script in the `scripts/` subfolder

This ensures every script in this folder has been fully 
validated before being committed to the repository.

---

## Notebook Progress — data_cleaning_notebook.ipynb

| Cell | Title | What It Does | Status |
|------|-------|-------------|--------|
| Cell 1 | Import Libraries | Imports pandas, matplotlib, and seaborn toolboxes | ✅ Complete |
| Cell 2 | Load Dataset | Loads ecommerce_sales_cleaned.csv — confirms 5,000 rows and 19 columns | ✅ Complete |
| Cell 3 | Preview Data | df.head() shows first 5 rows to confirm data loaded correctly | ✅ Complete |
| Cell 4 | Column Names | df.columns lists all 19 column names | ✅ Complete |
| Cell 5 | Data Types | df.info() confirms data types and zero null values | ✅ Complete |
| Cell 6 | Statistical Summary | df.describe() verifies figures match Phase 2 and Phase 3 findings | ✅ Complete |
| Cell 7 | Date Conversion | pd.to_datetime() converts Order_Date from text to datetime64 | ✅ Complete |
| Cell 8 | Build RFM Table | groupby and agg() calculate Recency, Frequency, Monetary per customer | ✅ Complete |
| Cell 9 | Assign RFM Scores | pd.cut() converts raw RFM values to 1-2-3 score bands per dimension | ✅ Complete |
| Cell 10 | Assign Segments | Custom function assigns Champion, Loyal, Promising, At Risk, Lost labels | ✅ Complete |
| Cell 11 | Visualise Segments | Bar chart showing customer count per segment | ✅ Complete |
| Cell 12 | Segment Revenue Analysis | Revenue and average spend per segment | ✅ Complete |
| Cell 13 | Export Segmented Data | Exports full RFM table with segments to CSV — rfm_customer_segments.csv — 4,844 rows 10 columns | ✅ Complete |

---

## Phase 4 Deliverables

| Deliverable | File | Description |
|-------------|------|-------------|
| RFM Segment Chart | `rfm_segment_chart.png` | Bar chart showing customer count and percentage per CRM segment |
| Segmented Customer Export | `rfm_customer_segments.csv` | Full RFM table with scores, segment labels, and CRM priority for all 4,844 customers |

---

## Key Phase 4 Findings

| Finding | Detail |
|---------|--------|
| Lost Customers | 2,972 customers — 61.35% of base — generate 53.46% of revenue |
| Promising Customers | 1,543 customers — 31.85% of base — generate 31.05% of revenue |
| At Risk High Value | 175 customers — 3.61% of base — generate 9.16% of revenue at avg order 279,303.37 |
| Loyal Customers | 152 customers — 3.14% of base — generate 6.18% of revenue — highest margin 15.47% |
| Champions | 2 customers — 0.04% of base — generate 0.15% of revenue |
| Most urgent CRM action | Win-back campaign targeting 175 At Risk High Value customers immediately |
| Biggest CRM opportunity | Nurture campaign targeting 1,543 Promising customers before they drift to Lost |
