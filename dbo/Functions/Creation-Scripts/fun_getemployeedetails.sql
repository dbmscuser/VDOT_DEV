SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function dbo.fun_getemployeedetails (@ID INT)
returns table
as
return 
(
select id, name 
from dbo.employee
where id = @ID 
);
GO
