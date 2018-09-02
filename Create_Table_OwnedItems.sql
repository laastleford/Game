USE [Game]
GO

/****** Object:  Table [dbo].[OwnedItems]    Script Date: 9/1/2018 10:40:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OwnedItems](
	[OwnedItemID] [bigint] IDENTITY(1,1) NOT NULL,
	[CharacterID] [bigint] NOT NULL,
	[ItemID] [bigint] NOT NULL,
	[ItemQty] [int] NOT NULL,
 CONSTRAINT [PK_OwnedItems] PRIMARY KEY CLUSTERED 
(
	[OwnedItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OwnedItems]  WITH CHECK ADD  CONSTRAINT [FK_OwnedItems_Items] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ItemID])
GO

ALTER TABLE [dbo].[OwnedItems] CHECK CONSTRAINT [FK_OwnedItems_Items]
GO


