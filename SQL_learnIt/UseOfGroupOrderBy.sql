/*
ORDER BY [Columna] ASC o DESC
GROUP BY
*/


SELECT
	   [OrderID]
--      ,[ProductID]
      ,SUM([UnitPrice] * [Quantity]) AS TotalOrder
--      ,[Quantity]
--      ,[Discount]
  FROM [master].[dbo].[Order Details]
  GROUP BY [OrderID]
  ORDER BY TotalOrder DESC
