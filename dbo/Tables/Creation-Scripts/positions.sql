SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[positions](
	[position_id] [int] NOT NULL,
	[position_name] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[createddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)
GO
ALTER TABLE [dbo].[positions] ADD  DEFAULT (getdate()) FOR [createddate]
GO
ALTER TABLE [dbo].[positions]  WITH CHECK ADD  CONSTRAINT [CHK_CreatedDate] CHECK  (([CreatedDate]<=getdate()))
GO
ALTER TABLE [dbo].[positions] CHECK CONSTRAINT [CHK_CreatedDate]
GO
