-- us of BETWEEN and IN

SELECT [ProductID]
      ,[ProductName]
      ,[SupplierID]
      ,[CategoryID]
      ,[QuantityPerUnit]
      ,[UnitPrice]
      ,[UnitsInStock]
      ,[UnitsOnOrder]
      ,[ReorderLevel]
      ,[Discontinued]
  --FROM [master].[dbo].[Products] WHERE [UnitPrice] BETWEEN 18 AND 20
  FROM [master].[dbo].[Products] WHERE [SupplierID] IN (1, 2, 5)