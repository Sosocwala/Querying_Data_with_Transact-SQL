CREATE TABLE Set1 (Col1 CHAR(1))
INSERT INTO Set1
VALUES ('A'), ('B'), ('C')

CREATE TABLE Set2 (Col1 CHAR(1))
INSERT INTO Set2
VALUES ('X'), ('Y'), ('Z')
  
SELECT *
FROM Set1
UNION
SELECT *
FROM Set2


SELECT[SalesOrderID], [OrderDate]
FROM[Sales].[SalesOrderHeader]
WHERE [OrderDate] BETWEEN '1-1-2012' AND '12-31-2012'
UNION
SELECT[SalesOrderID], [OrderDate]
FROM[Sales].[SalesOrderHeader]
WHERE [OrderDate] BETWEEN '1-1-2013' AND '12-31-2013'
