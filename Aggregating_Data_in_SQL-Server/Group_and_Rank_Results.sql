--Rank the highst salaries
SELECT TOP 2 [BusinessEntityID],[Rate] AS 'Hourly Rate',
		RANK() OVER (ORDER BY [Rate] DESC) AS 'Rank By Hourly Rate'
FROM[HumanResources].[EmployeePayHistory]
ORDER BY [Rate] DESC

--Ranking the Highst quantities in stock by location
SELECT  [ProductID],[LocationID],[Quantity],
		Rank() OVER (PARTITION BY [LocationID] ORDER BY [Quantity] ) AS 'Rank'
FROM [Production].[ProductInventory]
WHERE [LocationID] IN (1,2,3)
ORDER BY [LocationID]

