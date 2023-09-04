--A CROSS APPLY to select the products on each order
SEL ECT H.[SalesOrderID],
D.[ProductID] , D.[UnitPrice] , D.[OrderQty]
FROM[Sales].[SalesOrderHeader] AS H
CROSS APPLY
	(SELECT [ProductID], [UnitPrice], [OrderQty]
	 FROM[Sales].[SalesOrderDetail] AS D
	 WHERE D.[SalesOrderID] = H.[SalesOrderID]
	 AND H.[OrderDate] >= '6/1/2014') AS D

--Functional equvilent using an inner join
SELECT H.[SalesOrderID],
D.[ProductID] , D.[UnitPrice] , D.[OrderQty]
FROM[Sales].[SalesOrderHeader] AS H
	INNER JOIN [Sales].[SalesOrderDetail] AS D ON
	H.[SalesOrderID] = D.[SalesOrderID]
	WHERE H.[OrderDate] >= '6/1/2014'


