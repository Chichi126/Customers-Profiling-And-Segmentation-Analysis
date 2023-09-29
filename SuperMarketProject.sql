--- to create database named Supermarket
CREATE DATABASE Supermarket

---to display the whole table
SELECT *
FROM [dbo].[supermarket_sales]

-- How many invoices are there in the dataset?
SELECT Gender, COUNT(Gender) As Total_Customer
FROM supermarket_sales
GROUP BY Gender

--- Calculate the percentage of each gender 
SELECT
    Gender,
    COUNT(*) AS TotalCustomers,
    (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ()) AS PercentageOfTotalCustomers
FROM
    [dbo].[supermarket_sales]
GROUP BY
    Gender;

-- Calculate the total sales revenue
SELECT Gender, ROUND(SUM(Total), 2) AS TotalSalesRevenue 
FROM [dbo].[supermarket_sales]
GROUP BY Gender;


-- Analyze product sales by category
SELECT [Product_line], ROUND(SUM(Total), 2) AS CategoryTotalSales
FROM [dbo].[supermarket_sales]
GROUP BY [Product_line]
ORDER BY CategoryTotalSales;


-- Analyze customer demographics
SELECT CustomerSegment, COUNT(*) AS CustomerCount
FROM (
    SELECT
        [Customer_type],
        [Gender],
        CASE
            WHEN [Customer_type] = 'Member' AND [Gender] = 'Female' THEN 'Member - Female'
            WHEN [Customer_type] = 'Normal' AND [Gender] = 'Male' THEN 'Normal - Male'
            WHEN [Customer_type] = 'Normal' AND [Gender] = 'Female' THEN 'Normal - Female'
            WHEN [Customer_type] = 'Member' AND [Gender] = 'Male' THEN 'Member - Male'
            ELSE 'Unknown'
        END AS CustomerSegment
    FROM [dbo].[supermarket_sales]
) AS SegmentedCustomers
GROUP BY CustomerSegment
ORDER BY CustomerCount DESC;

-- how many customers from each branch
SELECT Branch, COUNT(Gender) Total_Customers, ROUND(SUM(Total),2) AS Total_Rev
FROM [dbo].[supermarket_sales]
GROUP BY Branch;

-- Calculate average rating
SELECT ROUND(AVG(Rating),2) AS AverageRating 
FROM [dbo].[supermarket_sales];

--Branch with the highest quantity sold and revenue
SELECT Branch, SUM(Quantity) TotalQty_Sold, ROUND(SUM(Total),2) As Total_Revenue
FROM [dbo].[supermarket_sales]
GROUP BY Branch
ORDER BY TotalQty_Sold DESC;

-- What is the average rating for each product line based on gender?

SELECT TOP 2 Product_line, FORMAT(AVG(Rating),'N2') AS Avg_Rating, Gender
FROM [dbo].[supermarket_sales]
GROUP BY Product_line, Gender
ORDER BY Avg_Rating DESC

SELECT TOP 1 Product_line, FORMAT(AVG(Rating),'N2') AS Avg_Rating
FROM [dbo].[supermarket_sales]
GROUP BY Product_line
ORDER BY Avg_Rating DESC

-- Product-line distribution across gender
SELECT Gender, COUNT(GENDER) Gender_Count, Product_line
FROM [dbo].[supermarket_sales]
GROUP BY Gender, Product_line
ORDER BY Gender_Count DESC;

-- What is the average rating for each product line?
SELECT Product_line, FORMAT(AVG(Rating), 'N2') AS Avg_Rating
FROM supermarket_sales
GROUP BY Product_line

--- which gender have avg higher rating, this will helps us to know which of the customers were more impressed
SELECT Gender, ROUND(AVG(Rating),2) AS Avg_Rating, ROUND(SUM(Total),2) AS Total_Rev
FROM [dbo].[supermarket_sales]
GROUP BY Gender;

-- To display count of customer based on payment type
SELECT Payment, COUNT(Gender) AS Customers_Count
FROM [dbo].[supermarket_sales]
GROUP BY Payment;

-- query to display the average gross income of each gender
 SELECT Gender,SUM(Quantity) AS Total_Qty, FORMAT(SUM(gross_income), 'N2') AS Total_GIncome
 FROM supermarket_sales
 GROUP BY Gender
 ORDER BY Total_GIncome DESC

 -- Analyze monthly Revenues from each gender
SELECT Gender,
    MONTH(Date) AS SalesMonth, 
    SUM(Total) AS TotalSales
FROM 
    [dbo].[supermarket_sales]
GROUP BY 
    MONTH(Date), Gender
ORDER BY 
    TotalSales desc;


--- Customer Loyalty
SELECT
    Gender,
    [Customer_type] AS CustomerType,
    ROUND(AVG(Rating),2) AS AverageRating
FROM
    [dbo].[supermarket_sales]
GROUP BY
    Gender,
    [Customer_type]
ORDER BY
    Gender,
    CustomerType;
