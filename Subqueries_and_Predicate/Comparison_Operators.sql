SELECT [Name]
FROM [Production].[Product]
WHERE [DaysToManufacture] IN 
	(SELECT AVG([DaysToManufacture])
	 FROM [Production].[Product]
	 GROUP BY [ProductSubcategoryID]
	 HAVING AVG([DaysToManufacture]) > 0)
