USE [Game]
GO

/****** Object:  Table [dbo].[Transactions]    Script Date: 9/1/2018 10:41:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Transactions](
	[TransactionID] [bigint] IDENTITY(1,1) NOT NULL,
	[CharacterID] [bigint] NOT NULL,
	[BaseStat] [int] NOT NULL,
	[CumStatValue] [int] NOT NULL,
	[OwnerAccomplishment] [varchar](50) NOT NULL,
	[OwnerLocation] [varchar](20) NOT NULL,
	[Boost] [int] NULL,
	[OwnedItemID] [bigint] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Characters] FOREIGN KEY([CharacterID])
REFERENCES [dbo].[Characters] ([CharacterID])
GO

ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Characters]
GO

ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_OwnedItems] FOREIGN KEY([OwnedItemID])
REFERENCES [dbo].[OwnedItems] ([OwnedItemID])
GO

ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_OwnedItems]
GO


