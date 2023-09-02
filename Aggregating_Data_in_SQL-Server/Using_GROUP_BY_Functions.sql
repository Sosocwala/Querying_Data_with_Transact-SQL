SELECT TOP(100) PERCENT [SalesPersonID], COUNT([TerritoryID]) AS 'Count of Sales'
FROM[Sales].[SalesOrderHeader]
GROUP BY [SalesPersonID],[TerritoryID]
HAVING ([SalesPersonID] IS NOT NULL)
ORDER BY [SalesPersonID]
