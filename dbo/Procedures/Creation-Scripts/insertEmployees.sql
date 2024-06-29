create procedure dbo.insertEmployees 
@EmployeeTable EmployeeTableType READONLY
AS
BEGIN

INSERT INTO dbo.Employee3 (emp_id, emp_name, phone_number, dept_id, position_id)
select emp_id, emp_name, phone_number, dept_id, position_id
from @EmployeeTable;

END;