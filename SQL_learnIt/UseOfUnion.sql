/**
UNION Combina valores únicos
UNION ALL Combina todos los valores
**/

SELECT
	[City]
	,[Country]
FROM [master].[dbo].[Suppliers]

UNION ALL

SELECT
	[City]
	,[Country]
FROM [master].[dbo].[Customers]

ORDER BY [Country]