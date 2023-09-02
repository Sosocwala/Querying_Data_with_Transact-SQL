SELECT [CustomerID], SUM([SubTotal]) AS 'Total Customer Sales'
FROM[Sales].[SalesOrderHeader]
GROUP BY[CustomerID]
HAVING SUM([SubTotal]) >= 5000
ORDER BY 'Total Customer Sales' DESC
