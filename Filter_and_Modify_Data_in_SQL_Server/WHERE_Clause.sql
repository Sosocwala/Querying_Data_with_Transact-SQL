Use WideWorldImporters
GO
SELECT[UnitPrice],[Quantity],[Description]
FROM[Sales].[OrderLines]
WHERE [Description] LIKE '%DEVELOPER%'
