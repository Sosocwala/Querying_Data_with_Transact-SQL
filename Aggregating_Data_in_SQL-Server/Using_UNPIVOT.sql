SELECT CustomerID, Sold_By, Order_Number --Note that "Sold_By" and "Order_Number"
FROM									 -- are just constructed column headers
	(SELECT CustomerID, SalesPerson1, SalesPerson2, SalesPerson3, SalesPerson4 
	FROM PivotedTable) AS PT --Subquery returnss the data "as is" from the original table
UNPIVOT
	(Order_Number FOR Sold_By IN -- The Unpivot referenced the  constructed columns above
		(SalesPerson1, SalesPerson2, SalesPerson3, SalesPerson4) --Places the data into the
																 --unpivoted columns
) AS UPT;
GO
