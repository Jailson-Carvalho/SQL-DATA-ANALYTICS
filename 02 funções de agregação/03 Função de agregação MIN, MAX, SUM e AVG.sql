

-- Função de agregação MIN, MAX, SUM e AVG

SELECT * FROM FactResellerSales

SELECT 

	MIN(ExtendedAmount) VALOR_MINIMO
	,MAX(ExtendedAmount) VALOR_MAXIMO
	,SUM(ExtendedAmount) FATURAMENTO
	,AVG(ExtendedAmount) MEDIA

FROM FactResellerSales