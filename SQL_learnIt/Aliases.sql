-- Column Aliases
-- AS

SELECT TOP (10) [CustomerID]
      ,[CompanyName] AS "Company"
      ,[ContactName] AS "Contact"
      ,[ContactTitle] AS "Contact Position"
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode] "Zip Code"
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [master].[dbo].[Customers]
