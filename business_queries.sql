-- 1. Total Orders

SELECT COUNT(*) AS Total_Orders
FROM Sales;


-- 2. Total Quantity Sold

SELECT SUM(OrderQuantity) AS Total_Quantity_Sold
FROM Sales;


-- 3. Top 10 Products by Quantity Sold

SELECT ProductKey,
       SUM(OrderQuantity) AS Quantity_Sold
FROM Sales
GROUP BY ProductKey
ORDER BY Quantity_Sold DESC
LIMIT 10;


-- 4. Top 10 Customers by Orders

SELECT CustomerKey,
       COUNT(*) AS Total_Orders
FROM Sales
GROUP BY CustomerKey
ORDER BY Total_Orders DESC
LIMIT 10;


-- 5. Top Territories by Sales

SELECT TerritoryKey,
       SUM(OrderQuantity) AS Quantity_Sold
FROM Sales
GROUP BY TerritoryKey
ORDER BY Quantity_Sold DESC;


-- 6. Average Order Quantity

SELECT AVG(OrderQuantity) AS Average_Order_Quantity
FROM Sales;


-- 7. Monthly Sales Trend

SELECT strftime('%Y-%m', OrderDate) AS Month,
       COUNT(*) AS Total_Orders
FROM Sales
GROUP BY Month
ORDER BY Month;