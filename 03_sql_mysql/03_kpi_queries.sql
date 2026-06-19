-- ============================================================
-- E-Commerce Sales Intelligence
-- File: 03_kpi_queries.sql
-- Description: SQL queries for key business performance metrics
-- Tool: MySQL Workbench 8.0 CE
-- Phase: Phase 3 — SQL Analysis
-- ============================================================

-- ============================================================
-- KPI-001: Overall Business Performance
-- Business Question: What is the total revenue, profit,
-- and average order value across all transactions?
-- ============================================================

SELECT 
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND(AVG(Profit), 2) AS Avg_Profit_Per_Order,
    ROUND(AVG(Profit_Margin_Pct), 2) AS Avg_Profit_Margin_Pct
FROM ecommerce_sales;

-- Result: 5000 transactions | Revenue 533,666,024.35 |
-- Profit 79,708,734.91 | AOV 106,733.20 |
-- Avg Profit Per Order 15,941.75 | Avg Margin 14.92%




-- ============================================================
-- KPI-002: Sales and Profit by Region
-- Business Question: Which region generates the highest
-- revenue and which has the strongest profit margin?
-- ============================================================

SELECT 
    Region,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Profit_Margin_Pct), 2) AS Avg_Profit_Margin_Pct,
    ROUND((SUM(Sales) / (SELECT SUM(Sales) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Total_Revenue
FROM ecommerce_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Result: North leads revenue 143,578,246.10 (26.90%)
-- South has strongest margin at 14.98%
-- All four regions within 3.81% of each other in revenue share


-- ============================================================
-- KPI-003: Sales and Profit by Category
-- Business Question: Which product category generates the most
-- revenue and which is the most profitable per sale?
-- ============================================================

SELECT 
    Category,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Profit_Margin_Pct), 2) AS Avg_Profit_Margin_Pct,
    ROUND((SUM(Sales) / (SELECT SUM(Sales) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Total_Revenue
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Result: Home Decor leads revenue at 57,233,222.35 (10.72%)
-- Electronics highest margin at 15.39% despite ranking 6th in revenue
-- Beauty lowest margin at 14.38%
-- Revenue spread of only 1.75% across all 10 categories


-- ============================================================
-- KPI-004: Discount Impact on Sales and Profit
-- Business Question: How does discount level affect
-- average order value and total profit?
-- ============================================================

SELECT 
    Discount,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND(AVG(Profit_Margin_Pct), 2) AS Avg_Profit_Margin_Pct,
    ROUND((COUNT(*) / (SELECT COUNT(*) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Transactions
FROM ecommerce_sales
GROUP BY Discount
ORDER BY Discount ASC;

-- Result: Discount trap confirmed
-- Avg order value falls from 117,340.72 at 0% to 94,618.46 at 20%
-- Total profit falls consistently at every discount increase
-- 20% discount has most transactions (1,021) but lowest revenue and profit

-- ============================================================
-- KPI-005: Monthly Revenue Trend
-- Business Question: What is the monthly revenue trend
-- and which months consistently drive the highest sales?
-- ============================================================

SELECT 
    Month,
    Month_Name,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND((SUM(Sales) / (SELECT SUM(Sales) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Total_Revenue
FROM ecommerce_sales
GROUP BY Month, Month_Name
ORDER BY Month ASC;

-- Result: May strongest month at 50,755,715.20 (9.51% of revenue)
-- February weakest at 39,755,842.60 (7.45% of revenue)
-- Revenue spread of only 2.06% between strongest and weakest month
-- Relatively flat seasonal distribution across all 12 months


-- ============================================================
-- KPI-006: Year Over Year Revenue Comparison
-- Business Question: How does revenue and profit compare
-- between 2024 and 2025 on a monthly basis?
-- Note: 2023 excluded — partial year October to December only
-- Note: October 2025 is partial — dataset ends early October
-- Note: November and December 2025 show zero — no data yet
-- ============================================================

SELECT 
    Month,
    Month_Name,
    ROUND(SUM(CASE WHEN Year = 2024 
        THEN Sales ELSE 0 END), 2) AS Sales_2024,
    ROUND(SUM(CASE WHEN Year = 2025 
        THEN Sales ELSE 0 END), 2) AS Sales_2025,
    ROUND(SUM(CASE WHEN Year = 2024 
        THEN Profit ELSE 0 END), 2) AS Profit_2024,
    ROUND(SUM(CASE WHEN Year = 2025 
        THEN Profit ELSE 0 END), 2) AS Profit_2025
FROM ecommerce_sales
WHERE Year IN (2024, 2025)
GROUP BY Month, Month_Name
ORDER BY Month ASC;

-- Result: 2025 tracking closely with 2024 Jan to Aug
-- May strongest month both years -- 2025 ahead at 26,010,928.65
-- September 2025 notable drop of 4.3M vs September 2024
-- October 2025 partial month -- dataset ends early October 2025
-- November and December 2025 show zero -- no data recorded


-- ============================================================
-- KPI-007: Payment Mode Analysis
-- Business Question: Which payment mode is used most
-- frequently and does payment method influence
-- average order value?
-- ============================================================

SELECT 
    Payment_Mode,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND(AVG(Profit_Margin_Pct), 2) AS Avg_Profit_Margin_Pct,
    ROUND((COUNT(*) / (SELECT COUNT(*) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Transactions,
    ROUND((SUM(Sales) / (SELECT SUM(Sales) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Revenue
FROM ecommerce_sales
GROUP BY Payment_Mode
ORDER BY Total_Sales DESC;

-- Result: Net Banking leads revenue at 111,465,516.05 (20.89%)
-- COD has highest margin at 15.07%
-- UPI lowest revenue share at 19.10%
-- All five modes balanced between 19.76% and 20.20% of transactions
