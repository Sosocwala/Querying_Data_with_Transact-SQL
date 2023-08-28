Use WideWorldImporters
GO
--Implicit conversion on the criteria, passed in as a character value
SELECT * 
FROM [Sales].[OrderLines]
WHERE [Quantity] = '50' --Instad of using an integer i used a charactor set

--Implicit conversion on UnitPrice (Decimal) and Quality (Integer)
SELECT  [UnitPrice] * [Quantity] AS SubTotal
FROM[Sales].[OrderLines]

--Explicit Convefrsion on UnitPrice
SELECT CAST([UnitPrice] AS INT) * [Quantity] AS SubTotal
FROM[Sales].[OrderLines]


