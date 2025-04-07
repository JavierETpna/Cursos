SELECT
[OrderDate]
,[CustomerID]
,[ShipVia]
,[ShipCity]
,[ShipAddress]
,[ShipRegion]
FROM [master].[dbo].[Orders] WHERE [ShipRegion] IS NOT NULL
/*FROM [master].[dbo].[Orders] WHERE [ShipRegion] IS NULL*/