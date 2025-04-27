/*
Formato de columnas
Agrega una nueva columna con el formato especificado
Se debe colocar alias a la column, sino aparece sin nombre
*/

SELECT TOP (1000) [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
   -- ,[OrderDate]
	  ,FORMAT ([OrderDate], 'dd/MM/yyyy') AS "Date"
   -- ,[RequiredDate]
	  ,FORMAT ([RequiredDate], 'dd "de" MMMM "de" yyyy', 'es-ES') AS "Required"
   -- ,[ShippedDate]
	  ,FORMAT ([ShippedDate], 'MMMM yyyy', 'es-ES') AS "Mes de envío"
      ,[ShipVia]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
  FROM [master].[dbo].[Orders]
  
