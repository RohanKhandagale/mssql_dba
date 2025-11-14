create table salesstaff
(
	staffid int not null primary key,
	fName nvarchar(50) not null,
	LName nvarchar(50) not null

)

insert into salesstaff(staffid,fName,LName)
values(01,'Krishn','Yadav')

select * from salesstaff
insert into salesstaff(staffid,fName,LName)
values(02,'John','wick'),
(03,'Ranvir','kapoor'),
(04,'Salman','Khan')


create table salesstaffNew
(
	ID int not null Identity primary key,
	staffId int not null,
	fName varchar(50),
	lName varchar(50)
)

insert into salesstaffNew(staffid,fName,LName)
values(200,'Krishn','Yadav')

insert into salesstaffNew(staffid,fName,LName)
values(300,'John','wick'),
(400,'Ranvir','kapoor'),
(500,'Salman','Khan')

select * from salesstaffNew

----------------Insert (Copy) data one table from another table----------------------------------------

create table nameOnlyTable
(
	fName varchar(50),
	lNmae varchar(50)
)

select * from nameOnlyTable

insert nameOnlyTable(fName,lNmae)
select fName,lname from salesstaffNew 
where id >=3

