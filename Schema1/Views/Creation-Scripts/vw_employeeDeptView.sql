CREATE VIEW Schema1.vw_employeeDeptView 
AS
SELECT 
e.emp_id,
e.emp_name,
d.deptname
FROM Schema1.employee  e
join Schema2.Department  d 
on e.deptid = d.deptid;