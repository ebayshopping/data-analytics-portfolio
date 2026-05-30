
CREATE DATABASE SalesManagementDB;

USE SalesManagementDB;

CREATE TABLE dimcustomers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(255)
);

CREATE TABLE dimproducts (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(255)
);

CREATE TABLE dimregions (
    Region_ID INT PRIMARY KEY,
    City VARCHAR(100),
    Country VARCHAR(100),
    Full_Name VARCHAR(255)
);

CREATE TABLE factsalesorders (

    Sales_ID INT PRIMARY KEY,

    Order_Number VARCHAR(50),

    Order_Date DATE,

    Customer_ID INT,

    Region_ID INT,

    Product_ID INT,

    Order_Quantity INT,

    Unit_Price DECIMAL(18,2),

    Line_Total DECIMAL(18,2),

    Total_Unit_Cost DECIMAL(18,2),

    Profit DECIMAL(18,2),

    Profit_Margin DECIMAL(18,4)

);

CREATE TABLE factbudgets (

    Budget_ID INT PRIMARY KEY,

    Product_Name VARCHAR(255),

    Budget_2017 DECIMAL(18,2)

);

CREATE TABLE agg_productsales (

    Product_ID INT,

    Total_Sales DECIMAL(18,2),

    Total_Quantity INT,

    Avg_Unit_Price DECIMAL(18,2),

    Total_Profit DECIMAL(18,2)

);

CREATE TABLE agg_regionsales (

    Region_ID INT,

    Regional_Sales DECIMAL(18,2),

    Total_Profit DECIMAL(18,2)

);

CREATE TABLE agg_customerrevenue (

    Customer_ID INT,

    Revenue DECIMAL(18,2),

    Orders_Count INT,

    Total_Profit DECIMAL(18,2)

);

CREATE INDEX IDX_Customer
ON factsalesorders(Customer_ID);

CREATE INDEX IDX_Product
ON factsalesorders(Product_ID);

CREATE INDEX IDX_Region
ON factsalesorders(Region_ID);

CREATE INDEX IDX_OrderDate
ON factsalesorders(Order_Date);

SELECT * FROM dimcustomers;

SELECT * FROM dimproducts;

SELECT * FROM dimregions;

SELECT * FROM factsalesorders;

SELECT * FROM factbudgets;
