CREATE DATABASE AdventureWorks;
USE AdventureWorks;
CREATE TABLE Sales (
    OrderDate DATE,
    StockDate DATE,
    OrderNumber VARCHAR(50),
    ProductKey INT,
    CustomerKey INT,
    TerritoryKey INT,
    OrderLineItem INT,
    OrderQuantity INT
);
