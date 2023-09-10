CREATE PROCEDURE SalesBetweenDates
@StartDate DATE,
@EndDate DATE,
@TotalSales MONEY OUTPUT
AS
SELECT @TotalSales = SUM(TotalDue) --Notice the SELECT statement setes the value
FROM [Sales].[SalesOrderDetail] --for the output parameter
WHERE [OrderDate] BETWEEN @StartDate and @EndDate
GO

DECLARE @Result MONEY
EXEC SalesBetweenDates '1/1/2014' , '1/31/2014', @TotalSales = @Result OUTPUT

--Reference the output parameter AFTER the execution of the stored procedure
PRINT 'TOTAL Sales for that period were $' + CAST(@Results AS VARCHAR(10))
