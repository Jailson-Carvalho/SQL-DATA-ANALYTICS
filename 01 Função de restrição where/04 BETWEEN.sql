--SELECT 

--	SalesOrderNumber
--	,OrderQuantity
--	,UnitPrice
--	,SalesAmount

--FROM [dbo].[FactResellerSales]

---- NA SINTAX USAR A FUNÇÃO BETWEEN 

--WHERE SalesAmount BETWEEN 5000 AND 10000
---- MAIS UM FILTRO
--AND OrderQuantity BETWEEN 5 AND 15

----TAMBÉM POSSO POR O NOT BETWEEN PARA DIZER OQ EU NÃO QUERO

--ORDER BY 4 DESC



-- COM DATAS
SELECT *

	

FROM [dbo].[DimEmployee]

WHERE HireDate BETWEEN '2008/01/01' AND '2010/01/01'
ORDER BY HireDate DESC