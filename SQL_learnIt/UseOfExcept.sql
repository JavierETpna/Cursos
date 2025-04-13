/**
EXCEPT
Devuelve el listado del primer Select, exceptuando
el listado que también aparece en el segundo Select.
También hace un DISTINCT implícito, que elimina los dulplicados
(En este caso quita Boise que está en el segundo listado y elimina los duplicados)
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