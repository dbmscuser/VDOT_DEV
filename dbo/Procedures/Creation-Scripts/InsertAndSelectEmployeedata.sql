create procedure dbo.InsertAndSelectEmployeedata (
@ID int,
@Name varchar(50)
)
AS 
BEGIN

--Insert a new record into employee table
insert into  dbo.employee (ID,name)
values(@id, @Name)



--select all records from sample table
select * from  dbo.employee

--select all records from view
select * from dbo.vw_employee 

END;