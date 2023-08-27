--Using the Inner Joins
USE WideWorldImporters
GO

SELECT Sales.Customers_Archive.CustomerID, Sales.Orders.OrderID
FROM [Sales].[Customers_Archive]
LEFT OUTER JOIN [Sales].[Orders]
ON Sales.Customers_Archive.CustomerID = Sales.Orders.CustomerID
WHERE (Sales.Orders.OrderID IS NULL)
ORDER BY Sales.Customers_Archive.CustomerI`
