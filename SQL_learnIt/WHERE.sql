SELECT
[LastName],
[FirstName],
[BirthDate],
[Address],
[City],
[Region],
[PostalCode],
[Country]
FROM [dbo].[Employees] WHERE [Country] = 'USA' AND [City] = 'Seattle'