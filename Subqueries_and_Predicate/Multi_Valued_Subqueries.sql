USE AdventureWorks2019
GO

SELECT[SalesOrderID]
FROM[Sales].[SalesOrderHeader]
WHERE [SalesPersonID] IN
	(SELECT	[BusinessEntityID]	
	FROM [Sales].[SalesPerson]
	WHERE [TerritoryID] IN (1,2))
