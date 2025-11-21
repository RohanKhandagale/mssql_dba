create procedure SelectAllPersonAddress
as
select * from Person.Address
Go

exec SelectAllPersonAddress

create procedure SelectAllPersonAddressWithParam (@city nvarchar(30))
as

--Begin
set nocount on

select * from Person.Address where city = @city;

exec SelectAllPersonAddressWithParam @city = 'New York'

