# Day 03 – Creating Views Using SSMS GUI in SQL Server  

## 🎯 Objective  
Learn how to create and manage a **View** in SQL Server using the **SSMS GUI**, and understand how to generate and execute its corresponding SQL script.

---

## 🧩 Steps Performed  

### 1️⃣ Opened SSMS and Connected to Database  
- Opened **SQL Server Management Studio (SSMS)**.  
- Connected to **AdventureWorks2022** database.  

### 2️⃣ Created View Using GUI  
- Expanded **AdventureWorks2022 → Views**.  
- Right-clicked **Views → New View...**  
- Added the following tables:  
  - `Person.Person`  
  - `Person.PersonPhone`  
  - `Person.PhoneNumberType`  
- Joined the tables on:  
  - `Person.BusinessEntityID = PersonPhone.BusinessEntityID`  
  - `PersonPhone.PhoneNumberTypeID = PhoneNumberType.PhoneNumberTypeID`  
- Selected columns:
  - `Title`, `FirstName`, `LastName`, `PhoneNumber`, `PhoneType`  
- Added the filter:  
  - `Title = 'Mr.'`  
- Saved the view as **EmployeePhoneDetails** under the **dbo** schema.

### 3️⃣ Generated Script for the View  
After saving, right-clicked **dbo.EmployeePhoneDetails → Script View as → CREATE To → New Query Editor Window**  
This produced the following script:

```sql
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
