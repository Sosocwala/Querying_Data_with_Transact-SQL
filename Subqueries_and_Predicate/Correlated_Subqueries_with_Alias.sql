--Find the Names of people who had sales over 2 million last year
SELECT [FirstName], [FirstName]
FROM [Person].[Person] PP
JOIN [Sales].[SalesPerson] SP ON
PP.[BusinessEntityID] =SP.[BusinessEntityID]
WHERE 2000000 <= 
	(SELECT[SalesLastYear]
	FROM [Sales].[SalesPerson] SP
	WHERE PP.[BusinessEntityID] = SP.[BusinessEntityID])
