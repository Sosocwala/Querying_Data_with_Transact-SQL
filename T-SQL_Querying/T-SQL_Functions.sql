--Using Functions in Select statements
SELECT * FROM [Sales].[Orders]
WHERE [OrderDate] >= (GETDATE()-180)

SELECT MAX(OrderDate)
FROM [Sales].[Orders]
 
SELECT AVG(Quantity)
FROM [Sales].[OrderLines]
