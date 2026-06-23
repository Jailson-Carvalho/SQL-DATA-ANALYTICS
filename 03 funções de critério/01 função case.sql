

-- função case (caso Quando) Cria uma coluna condicional

-- Case = caso
-- when = quando
-- then = então 

SELECT DISTINCT-- distict para trazer linhas/nomes que não se repetem

	EnglishProductSubcategoryName AS SUB_CATEGORIA
	,CASE
	WHEN EnglishProductSubcategoryName IN ('Mountain Bikes', 'Bike Racks', 'Bike Stands', 'Road Bikes', 'Pedals') THEN 'SPORT'
	WHEN EnglishProductSubcategoryName = 'Forks' THEN 'CASA'

	ELSE 'SEM_CATEGORIA'

	END AS CATEGORIA

FROM DimProductSubcategory