SELECT[TerritoryID]
FROM[Sales].[SalesTerritory]

SELECT[TerritoryID]
FROM[Sales].[SalesTerritory]
INTERSECT --This returns Terrritories that HAVE sales
SELECT [TerritoryID]
FROM[Sales].[SalesOrderHeader]

SELECT[TerritoryID]
FROM[Sales].[SalesTerritory]
EXCEPT --This returns Terrritories that DO NOT have sales
SELECT [TerritoryID]
FROM[Sales].[SalesOrderHeader]
