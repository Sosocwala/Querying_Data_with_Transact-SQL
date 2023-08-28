Use WideWorldImporters
GO
SELECT[UnitPrice],[Quantity],[Description]
FROM[Sales].[OrderLines]
WHERE[UnitPrice] >= 15.00 AND [Quantity] <= 50 
