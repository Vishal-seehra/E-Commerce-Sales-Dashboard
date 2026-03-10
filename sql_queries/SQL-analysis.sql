CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;
CREATE TABLE sales (
Invoice VARCHAR(20),
StockCode VARCHAR(20),
Description TEXT,
Quantity INT,
InvoiceDate DATETIME,
Price FLOAT,
CustomerID INT,
Country VARCHAR(50),
Revenue FLOAT
);

SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE 'C:/mysql_data/cleaned_dataset1.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;




SELECT
DATE_FORMAT(InvoiceDate,'%Y-%m') AS Month,
ROUND(SUM(Revenue),2) AS Monthly_Revenue
FROM sales
GROUP BY Month
ORDER BY Month;

SELECT Country,
ROUND(SUM(Revenue),2) AS Revenue
FROM sales
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;

SELECT 
    ROUND(SUM(Quantity * Price), 2) AS Total_Revenue,
    COUNT(DISTINCT Invoice) AS Total_Orders,
    COUNT(DISTINCT CustomerID) AS Unique_Customers,
    ROUND(SUM(Quantity * Price) / COUNT(DISTINCT Invoice), 2) AS Average_Order_Value
FROM ecommerce_analysis_sales;



SELECT 
    Country, 
    COUNT(DISTINCT Invoice) AS Order_Volume,
    ROUND(SUM(Quantity * Price), 2) AS Revenue
FROM sales
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;



SELECT 
    Description, 
    SUM(Quantity) AS Invoice,
    ROUND(SUM(Quantity * Price), 2) AS Revenue
FROM sales
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 5;



