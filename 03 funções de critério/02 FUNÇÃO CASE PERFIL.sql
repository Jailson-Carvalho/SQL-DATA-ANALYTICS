USE [AdventureWorksDW2019]

--SELECT * FROM FactResellerSales


--SELECT 

--	EmployeeKey
--	,SUM(ExtendedAmount) AS FATURAMENTO_VENDAS 
--	,CASE
--	WHEN SUM(ExtendedAmount) >= 5000000 THEN 'META BATIDA'
--	ELSE 'NÃO BATEU A META'
--	END AS 'META_BATIDA?'
--FROM FactResellerSales

--group by EmployeeKey

-- < 2 MILHOES = RUIM
-- ENTRE 2 MILHOES E 5 MILHOES = MÉDIO
-- >= 5 MILHOES = PROMOÇÃO

SELECT 

	EmployeeKey AS FUNCIONARIO
	,SUM(ExtendedAmount) AS FATURAMENTO_VENDAS 

	,CASE
	WHEN SUM(ExtendedAmount) < 2000000 THEN 'RUIM'
	WHEN SUM(ExtendedAmount) BETWEEN 2000000 AND 5000000 THEN 'MÉDIO'
	ELSE 'PROMOÇÃO'
	END 'PERFIL'

FROM FactResellerSales

group by EmployeeKey
ORDER BY 2