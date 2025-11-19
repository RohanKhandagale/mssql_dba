create table salesstaff
(
	staffID int not null primary key,
	firstName nvarchar(50) not null,
	lastname nvarchar(50) not null,
	countryregion nvarchar(50) not null
)

select * from salesstaff

insert into salesstaff
select businessentityid,firstname,lastname,countryregionname
from sales.vSalesPerson

delete  from salesstaff
delete  from salesstaff where countryregion = 'united states'
------ before doing delete or drop in production environment always do in Transaction so this will help with the cros checking result--------

begin tran
delete  from salesstaff where countryregion = 'united states'
-- it has deleted 11 rows table but it has not commited. it means we can get it  those data back----

commit
-- after checking the data is correct for this opration use commit for final----

rollback tran

-- useing rollback tran the deleted data get back so whenever you sue delete use in transction then use in production---


-----------------------------------------delete from another table-----------------------------------------------

delete salesstaff
where staffid in
(select businessentityid from sales.vSalesPerson where SalesLastYear = 0)

select * from salesstaff