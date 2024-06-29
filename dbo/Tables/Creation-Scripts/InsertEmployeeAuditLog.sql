SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertEmployeeAuditLog](
	[logid] [int] IDENTITY(1,1) NOT NULL,
	[insertedID] [int] NULL,
	[insertedName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insertedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)
GO
ALTER TABLE [dbo].[InsertEmployeeAuditLog] ADD  DEFAULT (getdate()) FOR [insertedDate]
GO
