# E-Commerce Sales Intelligence
## A Revenue Operations Case Study

**Analyst:** Miracle Ezekiel
**Tools:** Google Sheets — MySQL Workbench 8.0 CE — Python — GitHub
**Dataset:** 5,000 transactions — October 2023 to October 2025
**Repository:** github.com/miracleezekiel/ecommerce-sales-intelligence

---

## 1. Executive Summary

This case study presents a full end-to-end analysis of an 
e-commerce business generating 533,666,024.35 in total revenue 
across 5,000 transactions and 4,844 unique customers over two 
years. The analysis reveals a business facing a structural 
customer retention crisis,  96.82% of all customers placed 
exactly one order and never returned;  while simultaneously 
operating a discount strategy that systematically reduces 
profit at every discount tier. Using Google Sheets, SQL, and 
Python RFM analysis, every customer has been scored, 
segmented, and prioritised for targeted CRM action. The 
primary recommendation is an immediate automated re-engagement 
programme targeting 1,543 Promising customers and 175 At Risk 
High Value customers before they drift into permanent churn.

---

## 2. Business Context

### The Business Problem

This e-commerce operation generates strong headline revenue 
figures. Regional performance appears balanced. Monthly trends 
show consistent activity across the year. On the surface the 
business looks healthy.

Beneath the surface the data tells a different story.

The business is running on a leaking funnel. Revenue is 
sustained entirely by constantly acquiring new customers to 
replace the ones who quietly disappear after their first 
purchase. There is no returning customer base. There is no 
loyalty engine. There is no automated system watching for 
customers who are about to leave.

This is not a product problem. The data shows no category 
catastrophically underperforming. It is not a pricing problem 
in isolation; though the discount strategy is actively 
destroying margin. It is a retention problem. And retention 
problems are CRM problems.

### Why This Matters

Research consistently shows that acquiring a new customer 
costs five to seven times more than retaining an existing one. 
A business where 96.82% of customers never return is spending 
the maximum possible amount on acquisition while capturing 
none of the compounding value that loyal customers generate.

The two customers in this dataset who placed three orders 
spent nearly four times the lifetime value of a typical 
one-time buyer. That multiplier is the business case for 
every CRM investment this analysis recommends.

---

## 3. Data Overview

### Dataset Specifications

| Detail | Value |
|--------|-------|
| Total Transactions | 5,000 |
| Total Columns — Post Cleaning | 19 |
| Date Range | October 2023 to October 2025 |
| Unique Customers | 4,844 |
| Regions | 4 — North, East, West, South |
| Cities | 20 — 5 per region |
| Categories | 10 |
| Payment Modes | 5 |
| Discount Levels | 5 — 0%, 5%, 10%, 15%, 20% |

### Data Preparation

The raw dataset was subjected to five structured validation 
checks in Google Sheets before any analysis began:

| Check | Finding |
|-------|---------|
| Missing values | Zero across all 14 original columns |
| Duplicate records | Zero — all 5,000 Order IDs unique |
| Categorical consistency | All regions, categories, and payment modes confirmed |
| Sales formula verification | 100% accuracy across all 5,000 rows |
| Profit outlier detection | 223 transactions flagged above IQR upper bound |

Five calculated columns were added post-validation:
Outlier_Flag, Profit_Margin_Pct, Year, Month, Month_Name.

### Documented Data Issues

| Issue | Detail | Treatment |
|-------|--------|-----------|
| ISSUE-001 | 223 high-profit outlier transactions | Flagged and retained — not deleted |
| ISSUE-002 | 2023 data covers October to December only | Excluded from year-over-year comparisons |
| ISSUE-003 | Synthetic product names | Analysis conducted at Category level |
| ISSUE-004 | Repeat purchase rate below 5% | Central focus of Phase 4 CRM analysis |

---

## 4. Key Findings

### 4.1 Revenue and Profitability

| Metric | Value |
|--------|-------|
| Total Revenue | 533,666,024.35 |
| Total Profit | 79,708,734.91 |
| Average Order Value | 106,733.20 |
| Average Profit Margin | 14.92% |
| Strongest Month | May — 9.51% of annual revenue |
| Weakest Month | February — 7.45% of annual revenue |

### 4.2 Regional Performance

| Region | Revenue | Margin | Notable |
|--------|---------|--------|---------|
| North | 143,578,246.10 | 14.84% | Leads revenue — weakest margin |
| East | 135,811,637.95 | 14.91% | Second — consistent performer |
| West | 131,045,973.35 | 14.97% | Third — weakest bottom categories |
| South | 123,230,166.95 | 14.98% | Lowest revenue — best margin |

### 4.3 Category Performance

| Category | Margin | Notable |
|----------|--------|---------|
| Electronics | 15.39% | Highest margin category |
| Home Decor | Leads revenue | 10.72% of total |
| Beauty | 14.38% | Lowest margin category |

### 4.4 The Discount Trap

Every discount tier reduces average order value and total 
profit compared to zero-discount transactions:

| Discount Level | Average Order Value | Change vs 0% |
|---------------|-------------------|-------------|
| 0% | 117,340.72 | Baseline |
| 5% | — | Declining |
| 10% | — | Declining |
| 15% | — | Declining |
| 20% | 94,618.46 | -19.4% |

More discount. More orders. Less money. The discount strategy 
is confirmed as profit-destructive at every tier.

### 4.5 The Retention Crisis

| Metric | Value |
|--------|-------|
| One-Time Customers | 4,690 — 96.82% of all customers |
| Two-Order Customers | 152 — 3.14% |
| Three-Order Customers | 2 — 0.04% |
| Best Regional Retention | South — 0.75% repeat rate |
| Worst Regional Retention | North — 0.39% repeat rate |

Two-order customers spend 2.03 times more per lifetime than 
one-time customers. Three-order customers spend 3.88 times 
more. Every return visit compounds a customer's value.

### 4.6 Profitability by Region and Category

| Rank | Combination | Margin |
|------|------------|--------|
| 1 | North — Electronics | 16.23% |
| 2 | East — Clothing | 15.85% |
| 39 | North — Books | 13.89% |
| 40 | North — Beauty | 13.28% |

### 4.7 Outlier Transaction Impact

| Group | Transactions | Revenue Share | Profit Share |
|-------|-------------|--------------|-------------|
| Outlier — Yes | 223 — 4.46% | 11.78% | 16.81% |
| Outlier — No | 4,777 — 95.54% | 88.22% | 83.19% |

223 outlier transactions generate 16.81% of total profit 
from only 4.46% of all transactions.

### 4.8 RFM Customer Segmentation

| Segment | Customers | Revenue | Avg Order Value |
|---------|-----------|---------|----------------|
| Lost Customer | 2,972 — 61.35% | 53.46% | 95,997.47 |
| Promising | 1,543 — 31.85% | 31.05% | 107,382.27 |
| At Risk — High Value | 175 — 3.61% | 9.16% | 279,303.37 |
| Loyal Customer | 152 — 3.14% | 6.18% | 108,439.45 |
| Champion | 2 — 0.04% | 0.15% | 137,836.50 |

---

## 5. CRM Recommendations

### Priority 1 — Immediate Win-Back: At Risk High Value Customers

**Target:** 175 customers
**Why urgent:** Average order value of 279,303.37, nearly 
three times the dataset average. These customers have already 
demonstrated willingness to make high-value purchases. 
Every additional month of silence reduces re-engagement 
probability significantly.

**Recommended action:** Personalised outreach within the next 
30 days. Reference their previous purchase category. Offer 
a meaningful loyalty incentive — not a blanket discount but 
a category-specific reward. Flag these 175 customers in your 
CRM immediately for manual review by the highest-performing 
sales or CRM team member available.

---

### Priority 2 — Nurture Campaign: Promising Customers

**Target:** 1,543 customers
**Why urgent:** These customers bought recently and are still 
warm. The window to convert a one-time buyer into a returning 
customer closes quickly. Industry data consistently shows that 
the probability of a second purchase drops sharply after 
30 days of post-purchase silence.

**Recommended action:** Automated 3-step email sequence 
triggered immediately after first purchase:
- Day 3: Thank you email with related product recommendations
- Day 14: Educational content related to their purchase category
- Day 30: Loyalty programme invitation with first-return incentive

---

### Priority 3 — Loyalty Programme: Loyal Customers

**Target:** 152 customers
**Why important:** These are the only customers who have 
already demonstrated they will return. Their average margin 
of 15.47% is the highest of any segment; they buy less on 
discount and more at full price. Losing even 20 of these 
152 customers would be a disproportionate profit loss.

**Recommended action:** Formal loyalty programme with points, 
early access to new categories, and quarterly recognition. 
Make these customers feel seen and valued before a competitor 
does.

---

### Priority 4 — Discount Strategy Review

**Target:** Business-wide pricing policy
**Why important:** The discount trap is confirmed across all 
5,000 transactions. Every discount tier from 5% to 20% 
reduces average order value and total profit compared to 
zero-discount transactions.

**Recommended action:** Implement category-specific discount 
caps. Reserve discounts exclusively for win-back campaigns 
targeting At Risk and Lost segments, not as a general 
revenue driver. Test a zero-discount period for Electronics 
and Clothing — the two highest-margin categories — and 
measure impact on volume and profit simultaneously.

---

### Priority 5 — North Region Retention Focus

**Target:** North region — 1,283 customers — 99.61% churn rate
**Why important:** North generates the most revenue but has 
the worst retention rate. It is the most acquisition-dependent 
region in the business. A targeted retention pilot in North 
— even recovering 2% of churned customers — would represent 
meaningful incremental revenue given the region's base size.

**Recommended action:** Run the Promising customer nurture 
sequence as a North-specific pilot first. Measure 
re-engagement rate at 30, 60, and 90 days. Use South as 
the control region — its 0.75% retention rate makes it 
the best existing benchmark for comparison.

---

## 6. Technical Summary

### Tools and Phases

| Phase | Tool | Output |
|-------|------|--------|
| Phase 1 | Google Sheets | Cleaned dataset — 19 columns — 5 validation checks |
| Phase 2 | Google Sheets | 15 KPIs — 5 pivot tables — 5 charts |
| Phase 3 | MySQL Workbench | 22 SQL queries across 3 files |
| Phase 4 | Python — Cursor | RFM analysis — segment chart — customer export CSV |

### SQL Analysis Summary

| File | Queries | Focus |
|------|---------|-------|
| 03_kpi_queries.sql | 15 | Revenue, regional, category, discount, customer |
| 04_segmentation_queries.sql | 4 | City, frequency, value tiers, discount-category |
| 05_churn_analysis.sql | 3 | Inactive customers, purchase gaps, category churn |

### Python Analysis Summary

| Deliverable | Description |
|-------------|-------------|
| data_cleaning_notebook.ipynb | 13-cell Jupyter notebook — full RFM pipeline |
| rfm_segment_chart.png | Professional bar chart — 5 CRM segments |
| rfm_customer_segments.csv | 4,844 customers — 10 columns — prioritised |

---

## 7. Conclusion

This analysis began with 5,000 transactions and a question 
nobody had asked directly — is this business actually 
retaining its customers?

The answer is no. Emphatically, consistently, and 
business-wide, no.

96.82% of customers left after one purchase. The revenue 
numbers looked healthy because new customers kept arriving 
to fill the gap. But a business that cannot retain customers 
is not growing — it is running in place while burning 
acquisition budget to stay there.

The data also reveals the opportunity on the other side of 
that finding. The customers who did return spent twice as 
much per lifetime. The customers who returned twice spent 
nearly four times as much. Every additional order a customer 
places compounds their value to the business.

The CRM system required to capture that compounding value 
does not need to be complex. It needs to be intentional. 
A structured nurture sequence for Promising customers. A 
personalised win-back campaign for At Risk High Value 
customers. A formal loyalty programme for the 152 customers 
who already came back once.

These are not expensive interventions. They are automated, 
data-driven, and directly supported by two years of 
transaction evidence.

The data has already done the work of identifying who needs 
attention and in what order. The only remaining question is 
whether the business acts on it.

---

*Full project repository including all datasets, SQL queries,*
*Python notebooks, and documentation:*
*github.com/miracleezekiel/ecommerce-sales-intelligence*
