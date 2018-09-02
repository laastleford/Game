USE [Game]
GO

/****** Object:  Table [dbo].[IPAddresses]    Script Date: 9/1/2018 10:38:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[IPAddresses](
	[IPAddress] [varchar](64) NOT NULL,
	[AcctDetailID] [bigint] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[IPAddresses]  WITH CHECK ADD  CONSTRAINT [FK_IPAddresses_AcctDetails] FOREIGN KEY([AcctDetailID])
REFERENCES [dbo].[AcctDetails] ([AcctDetailID])
GO

ALTER TABLE [dbo].[IPAddresses] CHECK CONSTRAINT [FK_IPAddresses_AcctDetails]
GO


