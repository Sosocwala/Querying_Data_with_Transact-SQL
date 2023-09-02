SELECT[TerritoryID]
FROM[Sales].[SalesOrderHeader]

SELECT DISTINCT [TerritoryID]
FROM[Sales].[SalesOrderHeader]
ORDER BY [TerritoryID]

SELECT [TerritoryID]
FROM [Sales].[SalesOrderHeader]
GROUP BY [TerritoryID]

SELECT COUNT([TerritoryID])
FROM[Sales].[SalesOrderHeader]
GROUP BY [TerritoryID]


SELECT COUNT(DISTINCT [TerritoryID]) AS 'Number Of Teritory with Sales'
FROM [Sales].[SalesOrderHeader]

--Something to look out out for thant can provide wrong feedback

SELECT[TerritoryID], SUM([Bonus])
FROM[Sales].[SalesPerson]
GROUP BY [TerritoryID]
WITH ROLLUP 

SELECT SUM(DISTINCT [Bonus])
FROM[Sales].[SalesPerson]

