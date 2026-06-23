USE AdventureWorksDW2019
SELECT *


FROM [dbo].[DimCustomer]
--WHERE EnglishEducation = 'High School'
--AND EnglishOccupation = 'Manual'

WHERE EnglishEducation in ('Bachelors', 'High School')
-- EM OUTRA COLUNA
AND SpanishOccupation IN ('Administrativo','Profesional')
ORDER BY EnglishEducation 