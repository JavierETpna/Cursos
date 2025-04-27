SELECT
[LastName],
[FirstName],
[BirthDate],
[Address],
[City],
[Region],
[PostalCode],
[Country]
FROM [dbo].[Employees] WHERE LastName = 'Davolio' OR LastName = 'Peacock'