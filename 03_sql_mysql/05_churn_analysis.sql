-- ============================================================
-- E-Commerce Sales Intelligence
-- File: 05_churn_analysis.sql
-- Description: CRM and customer retention analysis queries
-- Tool: MySQL Workbench 8.0 CE
-- Phase: Phase 3 — SQL Analysis
-- ============================================================

-- CHURN-001: Inactive Customer Identification
-- Business Question: Which customers placed their last order
-- more than 12 months before the dataset end date?

SELECT 
    Customer_Name,
    Region,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Spent,
    MAX(Order_Date) AS Last_Order_Date,
    DATEDIFF('2025-10-03', MAX(Order_Date)) AS Days_Since_Last_Order,
    CASE 
        WHEN DATEDIFF('2025-10-03', MAX(Order_Date)) > 365 
            THEN 'Churned'
        WHEN DATEDIFF('2025-10-03', MAX(Order_Date)) > 180 
            THEN 'At Risk'
        ELSE 'Active'
    END AS Churn_Status
FROM ecommerce_sales
GROUP BY Customer_Name, Region
HAVING MAX(Order_Date) < DATE_SUB('2025-10-03', INTERVAL 12 MONTH)
ORDER BY Days_Since_Last_Order DESC
LIMIT 25;

-- Result: Top 25 most inactive customers identified
-- All show Churned status -- last order more than 365 days ago
-- Sorted by days since last order descending
-- Findings feed into Phase 4 CRM win-back recommendations

-- ============================================================
-- CHURN-002: Repeat Customer Purchase Gap Analysis
-- Business Question: For customers who placed more than one
-- order, how many days passed between first and last order?
-- ============================================================

SELECT 
    Customer_Name,
    Region,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Spent,
    MIN(Order_Date) AS First_Order_Date,
    MAX(Order_Date) AS Last_Order_Date,
    DATEDIFF(MAX(Order_Date), MIN(Order_Date)) 
        AS Days_Between_Orders,
    ROUND(SUM(Sales) / COUNT(*), 2) AS Avg_Order_Value
FROM ecommerce_sales
GROUP BY Customer_Name, Region
HAVING COUNT(*) > 1
ORDER BY Days_Between_Orders DESC;

-- Result: All repeat customers shown with purchase gap
-- Reveals range of days between first and last order
-- Informs timing of automated re-engagement triggers
-- Findings feed into Phase 4 CRM automation recommendations

-- ============================================================
-- CHURN-003: Category Churn Risk Analysis
-- Business Question: Which product categories have the
-- highest concentration of one-time buyers?
-- ============================================================

SELECT 
    Category,
    COUNT(DISTINCT Customer_Name) AS Total_Unique_Customers,
    SUM(CASE WHEN Customer_Order_Count = 1 
        THEN 1 ELSE 0 END) AS One_Time_Buyers,
    SUM(CASE WHEN Customer_Order_Count > 1 
        THEN 1 ELSE 0 END) AS Repeat_Buyers,
    ROUND(SUM(CASE WHEN Customer_Order_Count = 1 
        THEN 1 ELSE 0 END) * 100.0 / 
        COUNT(DISTINCT Customer_Name), 2) AS Churn_Risk_Pct,
    ROUND(SUM(CASE WHEN Customer_Order_Count > 1 
        THEN 1 ELSE 0 END) * 100.0 / 
        COUNT(DISTINCT Customer_Name), 2) AS Retention_Rate_Pct
FROM (
    SELECT 
        es.Customer_Name,
        es.Category,
        COUNT(*) AS Customer_Order_Count
    FROM ecommerce_sales es
    GROUP BY es.Customer_Name, es.Category
) AS Customer_Category_Orders
GROUP BY Category
ORDER BY Churn_Risk_Pct DESC;

-- Result: All 10 categories show churn risk above 95%
-- Retention crisis confirmed as business-wide not category-specific
-- Category with lowest churn risk identified as retention benchmark
-- Findings feed into Phase 4 CRM and case study recommendations

