USE [AdventureWorksDW2019]

-- FUNÇÕES DE DATA

SELECT 

	SalesOrderNumber ORDERM_VENDA
	,OrderDate DATA
	,YEAR(OrderDate) ANO
	,MONTH(OrderDate) AS 'MÊS'
	,DAY(OrderDate) DIA

FROM [dbo].[FactResellerSales]

-------------------------------

SELECT 

	YEAR(OrderDate) ANO
	,MONTH(OrderDate) AS 'MÊS'
	,DAY(OrderDate) DIA
	,COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) VENDA_BAIXA
	,COUNT(CASE WHEN ExtendedAmount >= 3000 THEN 1 END) VENDA_AUTA

FROM [dbo].[FactResellerSales]
GROUP BY YEAR(OrderDate), MONTH(OrderDate), DAY(OrderDate)
ORDER BY 1, 2, 3 