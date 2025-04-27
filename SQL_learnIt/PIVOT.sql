/**
PIVOT
1º Selecciono las columnas que van a quedar
2º Hago un nuevo Select y lo nombro (T_Origen) para pivotarlo
3º Pivoteo esa Tabla (T_Origen) indicando la transformación de
   la culumna de resultados y los valores para los cuales quiero las columnas
   los valores deben ir entre corchetes para indicar que son columnas
**/

SELECT * FROM (
SELECT
	[ProductID]
	,[CategoryID]
FROM [master].[dbo].[Products]
) AS T_Origen
PIVOT ( 
	COUNT([ProductID])
	FOR [CategoryID] IN ([1], [2], [3], [4], [5], [6])
) AS T_Pivot

SELECT * FROM (
	SELECT
		[OrderID]
		,[ProductID]
	FROM [master].[dbo].[Order Details]
) AS T_Origen
PIVOT(
	COUNT (OrderID)
	FOR [ProductID] IN ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10])
) AS PivotTable