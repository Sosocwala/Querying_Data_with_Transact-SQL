
SELECT [Sales].[Customers_Archive].CustomerID, [Sales].[Orders].OrderID,[Application].[People_Archive].PersonID
	FROM[Sales].[Customers_Archive]
		INNER JOIN [Sales].[Orders]
			ON [Sales].[Customers_Archive].CustomerID = [Sales].[Orders].OrderID
				INNER JOIN [Application].[People_Archive]
					ON[People_Archive].PersonID = [Sales].[Orders].[SalespersonPersonID]
					and [People_Archive].PersonID = [Sales].[Orders].[PickedByPersonID]
