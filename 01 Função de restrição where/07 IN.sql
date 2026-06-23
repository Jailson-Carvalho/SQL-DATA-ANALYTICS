SELECT *

FROM DimEmployee

--WHERE EmployeeKey IN (2,5,7)
WHERE FirstName NOT IN ('Kevin', 'Rob', 'Jossef')
AND DepartmentName IN ('Marketing', 'Production')

ORDER BY DepartmentName