-- View created using SSMS GUI
CREATE VIEW [dbo].[EmployeePhoneDetails]
AS
SELECT        Person.Person.Title, 
              Person.Person.FirstName, 
              Person.Person.LastName, 
              Person.PersonPhone.PhoneNumber, 
              Person.PhoneNumberType.Name AS PhoneType
FROM            Person.Person 
INNER JOIN      Person.PersonPhone 
        ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID 
INNER JOIN      Person.PhoneNumberType 
        ON Person.PersonPhone.PhoneNumberTypeID = Person.PhoneNumberType.PhoneNumberTypeID
WHERE        (Person.Person.Title = N'Mr.');
GO

-- Query the created view
SELECT TOP (1000) [Title],
      [FirstName],
      [LastName],
      [PhoneNumber],
      [PhoneType]
FROM [AdventureWorks2022].[dbo].[EmployeePhoneDetails];
GO

-- List all views in the current database
SELECT name, create_date FROM sys.views;
GO
