

SELECT 

	EmployeeKey
	,SUM(ExtendedAmount) SOMA

FROM dbo.FactResellerSales

WHERE EmployeeKey IN ('281', '288')

GROUP BY EmployeeKey

HAVING SUM(ExtendedAmount) > 5000000 -- FUNCIONÁRIOS QUE VENDERAM MAIS QUE 5 MILHÕES