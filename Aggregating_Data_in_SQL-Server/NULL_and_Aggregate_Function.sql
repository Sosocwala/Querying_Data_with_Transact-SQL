--All agrregate function igbore nulls, except for COUNT
--In other words, COUNT "sees" nulls and can deal with them


SELECT COUNT([SalesOrderID])
FROM[Sales].[SalesOrderHeader] --Returns 31465 rows

SELECT COUNT([SalesPersonID])
FROM[Sales].[SalesOrderHeader] --Returns 3806 rows, hence there are many nulls 

SELECT [SalesPersonID], Count([SalesOrderID]) AS 'Count of Customers'
FROM[Sales].[SalesOrderHeader]
GROUP BY [SalesOrderID] 
WITH ROLLUP


--The Sum aggregate function ignores nulls entirely, it does mot "see" them
SELECT SUM([SubTotal])
FROM[Sales].[SalesOrderHeader] -- Total of approximately 109 million

SELECT SUM([SubTotal])
FROM[Sales].[SalesOrderHeader]
GROUP BY [SalesPersonID] -- Group by SalesPersonID, where we know ther are many nulls,
WITH ROllUP				 -- but the total is still the same, approximately 109 million 
