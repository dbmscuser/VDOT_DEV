CREATE PROCEDURE schema2.InsertEmplDetails
(
@EmpID int,
@EmpName varchar(50),
@DeptID int,
@DeptName varchar(50)
)
AS 
BEGIN

--Insert a new record into employee table
insert into  Schema1.employee  (emp_id,emp_name,deptid )
values(@EmpID, @EmpName,@DeptID )

--Insert a new record into deployee table
insert into Schema2.Department (deptid,deptname )
values(@DeptID, @DeptName )

END;