--Using the Inner Joins
USE WideWorldImporters
GO

SELECT  Sales.Customers_Archive.CustomerID, Sales.Orders.OrderID
FROM [Sales].[Customers_Archive]
Right OUTER JOIN [Sales].[Orders]
ON Sales.Customers_Archive.CustomerID = Sales.Orders.OrderID
