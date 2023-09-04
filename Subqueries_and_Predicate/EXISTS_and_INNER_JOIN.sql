SELECT [Name]
FROM [Production].[ProductSubcategory] PS
WHERE EXISTS
	(SELECT *
	 FROM [Production].[Product] P
	 WHERE PS.[ProductSubcategoryID] = P.[ProductSubcategoryID] 
	 AND [Color] > 1000)

SELECT[Name]
FROM [Production].[ProductCategory] PS
INNER JOIN [Production].[Product] P
ON PS.[ProductSubcategoryID] = P.[ProductSubcategoryID]
WHERE [ListPrice] > 1000
