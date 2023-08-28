Use WideWorldImporters
GO
SELECT *
FROM[Warehouse].[StockItems_Archive]
Where [ColorID] IS NOT NULL AND [Brand] IS NOT NULL
