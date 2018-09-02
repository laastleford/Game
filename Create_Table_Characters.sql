USE [Game]
GO

/****** Object:  Table [dbo].[Characters]    Script Date: 9/1/2018 10:38:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Characters](
	[CharacterID] [bigint] IDENTITY(1,1) NOT NULL,
	[XP] [int] NOT NULL,
	[CharacterName] [varchar](20) NOT NULL,
	[BaseLocation] [varchar](50) NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[CharacterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


