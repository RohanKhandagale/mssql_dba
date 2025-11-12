use OurFirstDatabase
Go

select * from dbo.student

Select * From dbo.Course

Select s.RollNo,s.StudentName,c.CourseID from Student s
join Course c
on s.RollNo = c.RollNo

Select s.RollNo,s.StudentName,c.CourseID from Student s
left join Course c
on s.RollNo = c.RollNo

Select s.RollNo,s.StudentName,c.CourseID from Student s
right join Course c
on s.RollNo = c.RollNo

Select s.RollNo,s.StudentName,c.CourseID from Student s
full join Course c
on s.RollNo = c.RollNo