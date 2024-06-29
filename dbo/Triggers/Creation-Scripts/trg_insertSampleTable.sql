create trigger dbo.trg_insertSampleTable
on dbo.employee
after insert
as
begin

--Insert a new record into log table
insert into  dbo.InsertEmployeeAuditLog (insertedID,insertedName)
select ID, Name 
from inserted

END;