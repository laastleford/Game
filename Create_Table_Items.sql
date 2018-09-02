USE [Game]
GO

/****** Object:  Table [dbo].[Items]    Script Date: 9/1/2018 10:39:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Items](
	[ItemID] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryID] [bigint] NOT NULL,
	[ItemValue] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[TransactionID] [bigint] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ItemCategories] ([CategoryID])
GO

ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemCategories]
GO


