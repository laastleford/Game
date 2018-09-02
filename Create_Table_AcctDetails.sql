USE [Game]
GO

/****** Object:  Table [dbo].[AcctDetails]    Script Date: 9/1/2018 10:27:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AcctDetails](
	[AcctDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[CharacterID] [bigint] NOT NULL,
	[IPID] [bigint] NOT NULL,
	[LastLogin] [datetime2](7) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[PasswordHash] [varchar](128) NOT NULL,
	[PlayerCurrencyID] [bigint] NOT NULL,
 CONSTRAINT [PK_AcctDetails] PRIMARY KEY CLUSTERED 
(
	[AcctDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AcctDetails]  WITH CHECK ADD  CONSTRAINT [FK_AcctDetails_Characters] FOREIGN KEY([CharacterID])
REFERENCES [dbo].[Characters] ([CharacterID])
GO

ALTER TABLE [dbo].[AcctDetails] CHECK CONSTRAINT [FK_AcctDetails_Characters]
GO


