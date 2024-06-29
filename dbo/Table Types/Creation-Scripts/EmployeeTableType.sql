CREATE TYPE [dbo].[EmployeeTableType] AS TABLE(
	[emp_id] [int] NULL,
	[emp_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phone_number] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dept_id] [int] NULL,
	[position_id] [int] NULL
)
GO
