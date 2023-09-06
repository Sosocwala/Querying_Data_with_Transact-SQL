--Create a Function to retrieve the top 5 sales for any given customer
CREATE FUNCTION fn_HighestCustSales (@Customer INT)
RETURNS TABLE
AS 
RETURN
(
	SELECT TOP 5
	[CustomerID],
	ROUND([SubTotal], 2) AS HighestSalesAmount
	FROM
	[Sales].[SalesOrderHeader]
	WHERE
	[CustomerID] = @Customer
	ORDER BY HighestSalesAmount DESC
)
GO

SELECT HighestSalesAmount FROM  fn_HighestCustSales (30000)
WHERE HighestSalesAmount >= 75000
