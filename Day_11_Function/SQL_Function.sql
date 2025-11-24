select MAX(rate)
from [HumanResources].[EmployeePayHistory]

select MIN(rate)
from HumanResources.EmployeePayHistory

select count(*)
from HumanResources.EmployeePayHistory


select sum(Rate)
from HumanResources.EmployeePayHistory

print convert(int,40.52)
print getdate()
print day(getdate())
print month(getdate())
print year(getdate())

------- create user define function------------------------------

create table functionEmployee
(
	EmpID int primary key,
	firstName varchar(50) null,
	lastName varchar(50) null,
	Salary int null,
	Address varchar(100)null
)

insert into functionEmployee(EmpID,firstName,lastName,Salary,Address)values(01,'Rohan','Khandagale',200000,'Pune')
insert into functionEmployee(EmpID,firstName,lastName,Salary,Address)values(02,'Mohan','Yadav',100000,'Delhi')
insert into functionEmployee(EmpID,firstName,lastName,Salary,Address)values(03,'Sohan','Shinde',150000,'Nashik')
insert into functionEmployee(EmpID,firstName,lastName,Salary,Address)values(04,'Tanjiro','Slayer',300000,'Japan')

---------- Scalar Function-------
create function FnGetEmpFullName(@firstName varchar(50),@lastName varchar(50))
returns varchar(101)
as
begin
return (select @firstName + ' ' +@lastName);
end

select dbo.FnGetEmpFullName(firstName,lastName) as fullName, Salary from functionEmployee

select * from dbo.FnGetEmpFullName

-----inline table-valued function
create function fnGetEmployee()
returns table as
return (select * from functionEmployee)

select * from dbo.functionEmployee

------ multi-statement table-valued function
create function FnGetMultipleEmpoyee()
returns @Emp Table
(
	Empid int,
	firstName varchar(50),
	Salary int
)
	as 
	begin
	insert into @Emp
	select e.EmpId,e.firstName,e.Salary 
	from functionEmployee e;
	-- now update salary of first employee
	update @Emp set Salary = 250000 
	where Empid = 01;
	return
	end

select * from dbo.FnGetMultipleEmpoyee()




