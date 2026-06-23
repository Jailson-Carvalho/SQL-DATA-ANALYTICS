SELECT *

FROM DIMCUSTOMER

WHERE FIRSTNAME NOT IN ('Jon', 'Lauren', 'Julio')
AND EnglishEducation NOT IN ('Partial College', 'Partial High School')

ORDER BY EnglishEducation