SELECT 

	SalesOrderNumber
	,OrderQuantity
	,UnitPrice
	,SalesAmount

FROM [dbo].[FactResellerSales]

WHERE OrderQuantity >= 10 

ORDER BY 2 DESC