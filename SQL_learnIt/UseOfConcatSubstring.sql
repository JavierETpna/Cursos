/*
CONCAT( field, field, ...)
SUBSTRING( field, start, numer of characters)

*/


SELECT TOP (1000)
	   [EmployeeID]
	  ,CONCAT([TitleOfCourtesy], ' ', [LastName], ' ', SUBSTRING([FirstName], 1, 1), '.' ) AS 'Nombre formal'
      ,CONCAT( SUBSTRING([HomePhone], 7, 8), '-', [Extension]) AS 'PhoneNumber'
	  ,[LastName]
      ,[FirstName]
      ,[Title]
      ,[TitleOfCourtesy]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[HomePhone]
      ,[Extension]
      ,[Photo]
      ,[Notes]
      ,[ReportsTo]
      ,[PhotoPath]
  FROM [master].[dbo].[Employees]
  WHERE [Country] = 'USA'