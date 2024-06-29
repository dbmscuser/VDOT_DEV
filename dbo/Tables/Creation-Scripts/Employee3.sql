SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee3](
	[emp_id] [int] NOT NULL,
	[emp_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[phone_number] [dbo].[PhoneNumberType] NULL,
	[dept_id] [int] NULL,
	[position_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)
GO
ALTER TABLE [dbo].[Employee3]  WITH CHECK ADD  CONSTRAINT [fk_employee_dept_1] FOREIGN KEY([dept_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[Employee3] CHECK CONSTRAINT [fk_employee_dept_1]
GO
ALTER TABLE [dbo].[Employee3]  WITH CHECK ADD  CONSTRAINT [fk_employee_position_1] FOREIGN KEY([position_id])
REFERENCES [dbo].[positions] ([position_id])
GO
ALTER TABLE [dbo].[Employee3] CHECK CONSTRAINT [fk_employee_position_1]
GO
