/*
DATEDIFF( unit of time, start date, end date )
DATEADD( unit of time, amount of time, date to add to)
*/

SELECT TOP (1000) [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,FORMAT([OrderDate], 'dd/MM/yy') AS "Order Date"
      ,FORMAT([RequiredDate], 'dd/MM/yy') AS "Required Date"
	  ,DATEDIFF(dd, [OrderDate], [RequiredDate]) AS "Prevision days"
	  ,FORMAT([ShippedDate], 'dd/MM/yy') AS "Shipped"
      ,[ShipCountry]
  FROM [master].[dbo].[Orders]
