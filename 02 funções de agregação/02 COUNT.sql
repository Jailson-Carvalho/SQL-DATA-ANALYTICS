

-- FUNÇÃO DE AGREGAÇÃO COUNT: 

SELECT 

	DepartmentName
	,COUNT(DepartmentName) QUANTIDADE

FROM DimEmployee

GROUP BY DepartmentName

ORDER BY QUANTIDADE DESC



SELECT 
	
	SalesOrderNumber
	,COUNT(SalesOrderNumber) AS ORDEM_COMPRA

FROM FactResellerSales

GROUP BY SalesOrderNumber
ORDER BY 2 DESC