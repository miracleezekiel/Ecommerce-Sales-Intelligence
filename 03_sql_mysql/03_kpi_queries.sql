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
