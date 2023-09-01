SELECT [DueDate],[ShipDate]
FROM[Sales].[SalesOrderHeader]

--in this case there are no matching Values
SELECT NULLIF([DueDate],[ShipDate])
FROM [Sales].[SalesOrderHeader]
WHERE NULLIF([DueDate],[ShipDate]) is null

--Here you can find matching values
 SELECT [BillToAddressID],[ShipToAddressID],
 NULLIF([BillToAddressID], [ShipToAddressID]) AS 'IF NULL - Address Matched'
 FROM[Sales].[SalesOrderHeader]
 WHERE NULLIF([BillToAddressID],[ShipToAddressID]) is null
