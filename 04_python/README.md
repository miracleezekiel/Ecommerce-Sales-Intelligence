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
| Cursor | AI-powered code editor with built-in Jupyter notebook support |
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
