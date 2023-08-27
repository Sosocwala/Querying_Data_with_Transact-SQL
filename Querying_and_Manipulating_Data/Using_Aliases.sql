--Refering to Columns Using Aliases
USE WideWorldImporters
GO
SELECT[Description] AS ProductDis, [UnitPrice]*[Quantity] AS SubTotal
FROM [Sales].[OrderLines]
WHERE [UnitPrice]*[Quantity] > 1000
ORDER BY SuTotal
