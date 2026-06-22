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
