--Grouping sets, Rollup and Cub 
SELECT[SalesPersonID],[TerritoryID], SUM([SubTotal]) AS 'Total Sales Per Person, Per Temmory'
FROM[Sales].[SalesOrderHeader]
WHERE[SalesPersonID] IS NOT NULL -- Filter out the nulls
GROUP BY[SalesPersonID],[TerritoryID]
WITH ROLLUP
ORDER BY[SalesPersonID]
