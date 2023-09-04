--Create function to count the inventory at each location for a given product
CREATE FUNCTION fn_Inventory_Count (@ProductID INT)
RETURNS TABLE
AS
RETURN
(
	SELECT [ProductID], [LocationID], [Quantity]
	FROM[Production].[ProductInventory]
	WHERE [ProductID] = @ProductID
)
GO

--Testing function -not all products are inventoried
SELECT [LocationID],[Quantity]
FROM fn_Inventory_Count(1)

--CROSS Apply Only returns Products that are inventoried
SELECT P.[ProductID], P.Name, FN.Quantity
FROM
	Production.Product AS P
	CROSS APPLY 
	fn_Inventory_Count(P.[ProductID]) AS FN
	WHERE FN.Quantity is NULL
	ORDER BY P.[ProductID]
