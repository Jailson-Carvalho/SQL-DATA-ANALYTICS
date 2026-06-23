USE [AdventureWorksDW2019]

SELECT 

	SalesOrderNumber AS OREDM_VENDA
	,ExtendedAmount AS VALOR_VENDAS
	,CASE
	WHEN ExtendedAmount < 30000 THEN 'VENDA BAIXA'
	WHEN ExtendedAmount > 30000 THEN 'VENDA ALTA'
	END TIPO_VENDA
FROM FactResellerSales


--------------------------------


SELECT 
	YEAR (OrderDate) ANO
	,SalesOrderNumber AS OREDM_VENDA
	--,ExtendedAmount 
	,COUNT(CASE WHEN ExtendedAmount < 3000 THEN 1 END) VENDA_BAIXA
	,COUNT (CASE WHEN ExtendedAmount > 3000 THEN 1 END) VENDA_ALTA


FROM FactResellerSales
GROUP BY YEAR (OrderDate), SalesOrderNumber


------------------------------------------

-- VALIDAÇÃO

SELECT 
SalesOrderNumber
,SalesAmount
FROM FactResellerSales
WHERE SalesOrderNumber = 'SO43676'