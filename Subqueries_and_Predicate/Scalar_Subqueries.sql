--View Information for all orders placed on the most recent order date
USE WideWorldImporters
GO

SELECT [OrderID], [OrderDate]
FROM[Sales].[Orders]
WHERE [OrderDate] =
	(SELECT MAX([OrderDate]) FROM [Sales].[Orders])

--View Information for all items that are above average price
SELECT [OrderLineID], [Description]
FROM[Sales].[OrderLines]
WHERE [UnitPrice] >=
	(SELECT AVG([UnitPrice]) FROM [Sales].[OrderLines])
