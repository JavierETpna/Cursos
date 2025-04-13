/**
EXCEPT
Devuelve el listado del primer Select, exceptuando
el listado que tambi�n aparece en el segundo Select.
Tambi�n hace un DISTINCT impl�cito, que elimina los dulplicados
(En este caso quita Boise que est� en el segundo listado y elimina los duplicados)
**/

SELECT
	[ShipCity]
	,[ShipCountry]

FROM [master].[dbo].[Orders] WHERE [ShipCountry] = 'USA'

EXCEPT

SELECT
	 [City]
	 ,[Country]
FROM [master].[dbo].[Suppliers] WHERE [Country] = 'USA'