use AdventureWorks2022
Go
-----------------------------------------WHERE-----------------------------------------------------------------------
select * from Person.Address where PostalCode = '98011' -- 26 rows

select * from Person.Address where PostalCode != '98011' -- 19588

select * from Person.Address where PostalCode<> '98011' -- 19588

select count(*) from Person.Address where PostalCode ='98011' --26 cont

select * from Person.Address where ModifiedDate <= '2013-02-28 00:00:00.000' -- 4953 rows


select * from Person.Person -- 19972 rows

select * from Person.Person where FirstName like '%nny' -- 94 rows

select * from HumanResources.EmployeePayHistory  --316 rows

select min(Rate) As Payrate from HumanResources.EmployeePayHistory --6.50

select Max(Rate) As Payrate From HumanResources.EmployeePayHistory -- 125.50

select * from Production.ProductCostHistory --395 rows
where StartDate = '2013-05-30 00:00:00:000' AND StandardCost >=200.00 -- 94 rows

select * from Production.ProductCostHistory where ProductID in (802,820,803,900) -- 4 rows

select * from Production.ProductCostHistory where EndDate is null --195 ws

select * from Production.ProductCostHistory where EndDate is not null --200 rows


------------------------------------------ORDER BY--------------------------------------------------

select * from HumanResources.EmployeePayHistory order by rate

select * from HumanResources.EmployeePayHistory order by rate desc --316 rows

select * from HumanResources.EmployeePayHistory where ModifiedDate >='2010-06-30 00:00:000' 
order by ModifiedDate desc

select * from HumanResources.EmployeePayHistory where year(modifiedDate) >= '2011'

select *from HumanResources.EmployeePayHistory where MONTH(modifiedDate) = '06' order by ModifiedDate desc


--------------------------------------------Count,Group By------------------------------------------------------------

select count(*) from Person.Address where PostalCode = '98011'-- 26

select count(*),PostalCode from Person.Address group by PostalCode order by PostalCode desc -- 661 rows

select count(*),city,PostalCode from Person.Address group by city,PostalCode order by city desc -- 673 rows

select * from Person.Address where city = 'Cheltenham' -- 55 rows

--------------------------------------Having, Group by---------------------------------------------------------
select * from Production.Product - 504 rows

select count (1)  As  countofproduct,color from Production.Product where Color = 'yellow'  group by color

select count(1) as countofproduct, color from Production.Product group by Color -- 10 rows

select count (1) as countofproduct, color from Production.Product group by Color  having Color = 'yellow'