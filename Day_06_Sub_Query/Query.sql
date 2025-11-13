--  So we are working on this tables. In this section we use sub query on only select
--[HumanResources].[EmployeePayHistory]
--[Production].[Product]
--[Production].[ProductInventory]

use [AdventureWorks2022]
Go

select * from [HumanResources].[EmployeePayHistory]
where BusinessEntityID In (select BusinessEntityID from HumanResources.EmployeePayHistory
where rate >60)

select * from [Production].[Product]
where ProductID In ( select ProductID from Production.ProductInventory where Quantity >=300)