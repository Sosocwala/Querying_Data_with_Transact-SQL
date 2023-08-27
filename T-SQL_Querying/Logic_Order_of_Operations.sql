USE AdventureWorks2019
GO
--Logical processing order in SELECT statment
SELECT ProductID, UnitPrice, OrderQty
FROM Sales.SalesOrderDetail
WHERE ProductID BETWEEN 700 AND 800

--Logical processing order in a SELECT statment
SELECT ProductID, SUM([UnitPrice] * [OrderQty]) AS [SubTotal]
FROM Sales.SalesOrderDetail
WHERE ProductID BETWEEN 700 AND 800
GROUP BY ProductID
HAVING (SUM(UnitPrice * OrderQty) >= 250000)
ORDER BY [SubTotal] DESC

