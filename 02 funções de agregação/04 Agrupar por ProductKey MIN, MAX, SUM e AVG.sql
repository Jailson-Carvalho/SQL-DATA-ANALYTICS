SELECT * FROM FactResellerSales


-- Agrupar por ProductKey: MIN, MAX, SUM e AVG
SELECT 

	ProductKey
	,MIN(ExtendedAmount) VALOR_MINIMO_POR_PRODUTO
	,MAX(ExtendedAmount) VALOR_MAXIMO_POR_PRODUTO
	,SUM(ExtendedAmount) FATURAMENTO_POR_PRODUTO
	,AVG(ExtendedAmount) MEDIA_POR_PRODUTO

FROM FactResellerSales

GROUP BY ProductKey
ORDER BY 1

