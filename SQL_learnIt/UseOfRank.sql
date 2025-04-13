--RANK


SELECT
RANK()
		OVER(
			ORDER BY Country ASC
		) AS CountryRank 
	,[SupplierID]
    ,[CompanyName]
    ,[ContactName]
    ,[ContactTitle]
    ,[Address]
    ,[City]
    ,[Region]
    ,[Country]
FROM [master].[dbo].[Suppliers]
