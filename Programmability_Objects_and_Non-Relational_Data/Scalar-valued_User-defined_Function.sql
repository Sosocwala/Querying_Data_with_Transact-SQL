
CREATE FUNCTION fn_Emp_Sick_vs_Away (@Emp INT)
RETURNS VARCHAR(20)
BEGIN
	RETURN
		(SELECT IIF(([SickLeaveHours]>[VacationHours]), 'Higher Sick Leave', 'Higher Vacation Hours')
		FROM [HumanResources].[Employee]
		WHERE [BusinessEntityID] = @Emp)
END

DECLARE @Results VARCHAR(20)
DECLARE @EmpID INT
SET @EmpID = 9

EXEC @Results = fn_Emp_Sick_vs_Away @Epm = @EmpID
SELECT 'Employee ' + CAST(@EmpID AS CHAR(3)) + 'Has ' + @Results AS Result
