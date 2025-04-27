/*
COUNT
AVG
SUM
MIN
MAX
*/
	SELECT COUNT([ProductID]) AS 'Cantidad de Productos'
	FROM [master].[dbo].[Products]

	SELECT AVG([UnitPrice]) AS 'Precio Promedio'
	FROM [master].[dbo].[Products]

	SELECT SUM([UnitsInStock]) AS 'Total en Stock'
	FROM [master].[dbo].[Products]

	SELECT MIN([UnitPrice]) AS 'Precio Mínimo'
	FROM [master].[dbo].[Products]

	SELECT MAX([UnitPrice]) AS 'Precio Máximo'
	FROM [master].[dbo].[Products]