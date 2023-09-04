--Find the Names of people who had sales over 2 million last year
SELECT [FirstName], [FirstName]
FROM [Person].[Person]
JOIN [Sales].[SalesPerson] ON
[Person].[Person].[BusinessEntityID] = [Sales].[SalesPerson].[BusinessEntityID]
WHERE 2000000 <= 
	(SELECT[SalesLastYear]
	FROM [Sales].[SalesPerson]
	WHERE [Person].[Person].[BusinessEntityID] = [Sales].[SalesPerson].[BusinessEntityID])
