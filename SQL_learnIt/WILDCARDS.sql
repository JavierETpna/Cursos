-- Wildcard Characters
-- Para buscar cuando no conozco el contenido completo, sólo una parte

SELECT [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShipCountry]
  FROM [master].[dbo].[Orders]
  WHERE [CustomerID] LIKE 'VI%' --no olvidar las comillas simples!! 