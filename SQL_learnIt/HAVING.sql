/* HAVING
La diferencia con WHERE es que HAVING
calcula luego de hacer las transformaciones,
mientras que WHERE primero filtra y luego hace las transformaciones.
*/


SELECT
	[ProductID]
	,COUNT( [OrderID] ) AS CantOrders
	,AVG( [UnitPrice] ) AS AvgPrice
FROM [master].[dbo].[Order Details]
GROUP BY [ProductID]
HAVING AVG( [UnitPrice] ) > 50
ORDER BY [ProductID]