SELECT [CustomerID],[PersonID],[StoreID],[TerritoryID],
COALESCE([PersonID],[StoreID],[TerritoryID]) AS 'First non-null value'
FROM [Sales].[Customer]
