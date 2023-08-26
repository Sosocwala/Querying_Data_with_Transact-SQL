USE TestErrorHandling
GO
BEGIN TRY
PRINT 'Attempting to Record Insertion'
INSERT INTO [dbo].[Employee](ID, EmpName, Salary)
Values(1, 'Msolombane Madi', 35300)
INSERT INTO [dbo].[Employee](ID, EmpName, Salary)
Values(2, 'Analo Libode', 31200)
INSERT INTO [dbo].[Employee](ID, EmpName, Salary)
Values(3, 'Msolombane Madi', 42022)
PRINT 'All Records inserterd successfully'
END TRY  

BEGIN CATCH
PRINT 'Error A duplicate Emloyee ID was encountered, record insertion aborted'
END CATCH

SELECT * FROM [dbo].[Employee]
GO

--
