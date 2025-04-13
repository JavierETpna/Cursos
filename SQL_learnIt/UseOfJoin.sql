/** JOIN

JOIN
RIGHT JOIN
LEFT JOIN

**/

SELECT
	Join2.RegionDescription
	,Join2.TerritoryDescription
	,Emp.FirstName
	,Emp.LastName
FROM
	(
	SELECT
		Join1.RegionDescription
		,Join1.TerritoryDescription
		,EmpTer.EmployeeID
	FROM
		(
		SELECT
				Reg.[RegionID]
				,Reg.[RegionDescription]
				,Ter.[TerritoryID]
				,Ter.[TerritoryDescription]
		FROM [master].[dbo].[Region] AS Reg
		JOIN [master].[dbo].[Territories] AS Ter
		ON Ter.[RegionID] = Reg.[RegionID]
		) AS Join1
	RIGHT JOIN [dbo].[EmployeeTerritories] AS EmpTer
	ON EmpTer.TerritoryID = Join1.TerritoryID
	) AS Join2
RIGHT JOIN [master].[dbo].[Employees] AS Emp
ON Join2.EmployeeID = Emp.EmployeeID