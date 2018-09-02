USE [Game]
GO

/****** Object:  Table [dbo].[PlayerCurrencies]    Script Date: 9/1/2018 10:40:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PlayerCurrencies](
	[AcctDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[CurrencyAmt] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PlayerCurrencies]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCurrencies_AcctDetails] FOREIGN KEY([AcctDetailID])
REFERENCES [dbo].[AcctDetails] ([AcctDetailID])
GO

ALTER TABLE [dbo].[PlayerCurrencies] CHECK CONSTRAINT [FK_PlayerCurrencies_AcctDetails]
GO


