/*
DATEDIFF( unit of time, start date, end date )
DATEADD( unit of time, amount of time, date to add to)
*/

CREATE VIEW Tabla_Javier AS
SELECT TOP (1000) [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,FORMAT([OrderDate], 'dd/MM/yy') AS "Order Date"
      ,FORMAT([RequiredDate], 'dd/MM/yy') AS "Required Date"
	  ,DATEDIFF(dd, [OrderDate], [RequiredDate]) AS "Prevision days"
	  ,FORMAT( DATEADD(MM, 2, [OrderDate]) , 'dd/MM/yy') AS "Estimated Date" 
	  ,FORMAT([ShippedDate], 'dd/MM/yy') AS "Shipped"
      ,[ShipCountry]
  FROM [master].[dbo].[Orders]
