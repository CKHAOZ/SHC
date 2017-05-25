USE [SHC]
GO

/****** Object:  Table [dbo].[UserCondai]    Script Date: 25/05/2017 5:01:38 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserCondai](
	[idUsu] [int] NOT NULL,
	[usuName] [varchar](128) NOT NULL,
	[usuUserName] [varchar](50) NOT NULL,
	[usuPassword] [varchar](50) NOT NULL,
	[usuActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserCondai] PRIMARY KEY CLUSTERED 
(
	[idUsu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

