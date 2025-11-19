select
firstName +' '+ lastName as fullName,
TerritoryName,
TerritoryGroup,
SalesQuota,
salesYTD,
saleslastyear
into salesStaff
from[Sales].[vSalesPerson]

select * from salesstaff

select * from [Sales].[vSalesPerson]

------------------Upadte query ------------------------------------------------------------------

update salesstaff set salesquota = 500000.00
update salesstaff set salesquota = salesquota + 1500000 where TerritoryName is null

update salesstaff set territoryName = 'UK' where territoryname = 'United Kingdom'

update salesstaff set territoryName = 'Caneda' where territorygroup is null 
update salesstaff set territoryname = 'Caneda',territorygroup = 'Europe' where territorygroup is null 


select * from salesstaff

update salesstaff set salesquota = sp.salesquota
from salesstaff ss
inner join sales.vSalesPerson sp
on ss.fullName = (sp.firstName+ ' ' +sp.lastName)

-------after running above query we are back those first values as it in the table by applying inner join------------------------


