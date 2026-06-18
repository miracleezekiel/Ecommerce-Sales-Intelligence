-- ============================================================
-- E-Commerce Sales Intelligence
-- File: 01_schema_setup.sql
-- Description: Creates the database and table structure
-- Tool: MySQL Workbench 8.0 CE
-- Phase: Phase 3 — SQL Analysis
-- ============================================================

-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS ecommerce_sales_db;

-- Step 2: Select the database
USE ecommerce_sales_db;

-- Step 3: Create the ecommerce_sales table
CREATE TABLE IF NOT EXISTS ecommerce_sales (
    Order_ID          INT,
    Order_Date        DATE,
    Customer_Name     VARCHAR(100),
    Region            VARCHAR(50),
    City              VARCHAR(50),
    Category          VARCHAR(50),
    Sub_Category      VARCHAR(50),
    Product_Name      VARCHAR(150),
    Quantity          INT,
    Unit_Price        DECIMAL(10,2),
    Discount          INT,
    Sales             DECIMAL(10,2),
    Profit            DECIMAL(10,2),
    Payment_Mode      VARCHAR(50),
    Outlier_Flag      VARCHAR(5),
    Profit_Margin_Pct DECIMAL(10,2),
    Year              INT,
    Month             INT,
    Month_Name        VARCHAR(20)
);
