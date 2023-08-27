SELECT IntCol, CharCol
FROM IntTable
CROSS JOIN CharTable
ORDER BY IntCol

SELECT E.EmpID, E.EmpName, E.ManagedBy
FROM TestEmployees E
LEFT JOIN TestEmployees M
ON E.EmpID = M.ManagedBy
WHERE E.ManagedBy

