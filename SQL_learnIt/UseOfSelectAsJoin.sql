/**
Otra forma diferente de hace JOIN
Selecciono la columna coincidente con WHERE
y se selecciona las Tabas a unir en FROM, nombrándolas y separadas por coma (,)
**/

SELECT
	Emp.[LastName]
    ,Emp.[FirstName]
    ,Emp.[Boss]
	,Ord.*
FROM
	(SELECT
		R.[EmployeeID]
		,R.[LastName]
		,R.[FirstName]
		,R.[ReportsTo]
		,E.[LastName] AS 'Boss',E.[Title]
		,R.[TitleOfCourtesy]
		,R.[City]
		,R.[Region]
		,R.[Country]
		,R.[Photo]
	FROM [master].[dbo].[Employees] AS E
	JOIN [master].[dbo].[Employees] AS R
	ON R.ReportsTo = E.EmployeeID
	WHERE R.[EmployeeID] = 8
	) AS Emp
	,
	(SELECT
  	   [EmployeeID]
	  ,[OrderID]
      ,[CustomerID]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShippedDate]
      ,[ShipVia]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
	 FROM [master].[dbo].[Orders]
	 WHERE [ShipCountry] = 'USA'
	 ) AS Ord
WHERE Emp.EmployeeID = Ord.EmployeeID