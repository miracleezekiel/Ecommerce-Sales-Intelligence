-- ============================================================
-- E-Commerce Sales Intelligence
-- File: 04_segmentation_queries.sql
-- Description: Customer and transaction segmentation queries
-- Tool: MySQL Workbench 8.0 CE
-- Phase: Phase 3 — SQL Analysis
-- ============================================================

-- SEG-001: Sales Performance by Region and City
-- Business Question: Within each region, which specific
-- cities are driving the most revenue?

SELECT 
    Region,
    City,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND(AVG(Profit_Margin_Pct), 2) AS Avg_Profit_Margin_Pct,
    ROUND((SUM(Sales) / (SELECT SUM(Sales) 
        FROM ecommerce_sales)) * 100, 2) AS Pct_of_Total_Revenue
FROM ecommerce_sales
GROUP BY Region, City
ORDER BY Region ASC, Total_Sales DESC;

-- Result: 20 rows -- 5 cities per region across 4 regions
-- Guwahati East is top city globally at 29,606,888.90 (5.55%)
-- Revenue balanced across all 20 cities -- range of only 0.98%
-- Surat West leads West region at 28,532,934.65 -- highest West margin 15.67%
-- Mumbai West is lowest performing city at 24,391,228.20 (4.57%)
-- Bhubaneswar East has highest East margin at 15.20%
-- All city totals verified against KPI-002 regional totals

-- ============================================================
-- SEG-002: Customer Order Frequency Segments
-- Business Question: How are customers distributed across
-- order frequency segments and how much revenue does
-- each segment contribute?
-- ============================================================

SELECT 
    CASE 
        WHEN Order_Count = 1 THEN '1 — One-Time Customer'
        WHEN Order_Count = 2 THEN '2 — Two Orders'
        WHEN Order_Count = 3 THEN '3 — Three Orders'
        ELSE '4 — Four or More Orders'
    END AS Customer_Segment,
    COUNT(*) AS Customer_Count,
    SUM(Order_Count) AS Total_Orders,
    ROUND(SUM(Total_Spent), 2) AS Total_Revenue_From_Segment,
    ROUND(AVG(Total_Spent), 2) AS Avg_Revenue_Per_Customer,
    ROUND(SUM(Total_Spent) / (SELECT SUM(Sales) 
        FROM ecommerce_sales) * 100, 2) AS Pct_of_Total_Revenue
FROM (
    SELECT 
        Customer_Name,
        COUNT(*) AS Order_Count,
        SUM(Sales) AS Total_Spent
    FROM ecommerce_sales
    GROUP BY Customer_Name
) AS Customer_Summary
GROUP BY Customer_Segment
ORDER BY Customer_Segment ASC;

-- Result: One-Time -- 4,690 customers -- 93.67% revenue -- avg 106,582.82
-- Two Orders -- 152 customers -- 6.18% revenue -- avg 216,878.90
-- Two-Order customers spend 2.03x more than One-Time customers
-- Three Orders -- 2 customers -- 0.15% revenue -- avg 413,509.50
-- Three-Order customers spend 3.88x more than One-Time customers
-- All totals verified -- 4,844 customers -- 5,000 orders -- 100.00%
