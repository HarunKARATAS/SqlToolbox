USE AdventureWorks
GO

CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = @City
GO